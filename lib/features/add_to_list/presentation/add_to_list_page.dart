import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';
import 'package:todo_app/core/di/injection.dart';
import 'package:todo_app/features/add_to_list/bloc/todo_bloc.dart';
import 'package:todo_app/features/add_to_list/presentation/widgets/todo_list.dart';

class AddToListPage extends StatelessWidget {
  final String listId;
  final String title;
  const AddToListPage({super.key, required this.listId, required this.title});

  bool get isNew => listId.isEmpty;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodoBloc>(
      create: (_) {
        final bloc = getIt<TodoBloc>();
        log('listId: $listId');
        if (isNew) {
          bloc.add(const TodoEvent.fetchLists()); // or some init event
        } else {
          bloc.add(TodoEvent.fetchTasks(listId));
        }
        return bloc;
      },

      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(CupertinoIcons.back),
          ),
        ),
        body: BlocConsumer<TodoBloc, TodoState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeWhen(
              // loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (lists, tasks, error) {
                return TodoListWidget(
                  newTaskController: TextEditingController(),
                  controller: TextEditingController(text: title),
                  tasks:
                      tasks
                          ?.map(
                            (t) => Task(
                              id: t.id,
                              title: t.title,
                              isDone: t.isDone,
                            ),
                          )
                          .toList() ??
                      [],
                  onToggle: (taskId, isDone) {
                    context.read<TodoBloc>().add(
                      TodoEvent.toggleTask(
                        taskId: taskId,
                        isDone: isDone,
                        listId: listId,
                      ),
                    );
                  },
                  onAdd: (title) {
                    if (isNew) {
                      context.read<TodoBloc>().add(TodoEvent.createList(title));
                      return;
                    }
                    context.read<TodoBloc>().add(
                      TodoEvent.addTask(listId: listId, title: title),
                    );
                  },
                  onRemove: (taskId) {
                    final match = (tasks ?? []).firstWhereOrNull(
                      (t) => t.id == taskId,
                    );
                    if (match != null) {
                      context.read<TodoBloc>().add(
                        TodoEvent.deleteTask(match.id, listId),
                      );
                    }
                  },
                );
              },

              orElse: () => SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
