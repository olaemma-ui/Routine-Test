import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';
import 'package:todo_app/core/di/injection.dart';
import 'package:todo_app/features/add_to_list/bloc/todo_bloc.dart';
import 'package:todo_app/features/add_to_list/domain/entities/task_entity.dart';
import 'package:todo_app/features/add_to_list/presentation/widgets/todo_list.dart';

@immutable
class AddToListPage extends StatefulWidget {
  final String listId;
  final String title;

  AddToListPage({super.key, required this.listId, required this.title});

  @override
  State<AddToListPage> createState() => _AddToListPageState();
}

class _AddToListPageState extends State<AddToListPage> {
  bool get isNew => widget.listId.isEmpty;

  List<TaskEntity>? previous;

  final titleController = TextEditingController();

  final taskController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleController.text = widget.title;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    titleController.dispose();
    taskController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<TodoBloc>()
        ..add(
          isNew
              ? const TodoEvent.fetchLists()
              : TodoEvent.fetchTasks(widget.listId),
        ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(CupertinoIcons.back),
          ),
        ),
        body: BlocBuilder<TodoBloc, TodoState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => _buildTodoList(context, previous ?? []),
              loaded: (lists, tasks, error) {
                previous = tasks;
                return _buildTodoList(context, tasks ?? []);
              },
              error: (msg) => Center(child: Text("Error: $msg")),
            );
          },
        ),
      ),
    );
  }

  /// ✅ Extracted common widget builder
  Widget _buildTodoList(BuildContext context, List<TaskEntity> tasks) {
    final mappedTasks = tasks
        .map((t) => Task(id: t.id, title: t.title, isDone: t.isDone))
        .toList();

    return TodoListWidget(
      newTaskController: taskController,
      controller: titleController,
      tasks: mappedTasks,
      onTitleChanged: (newTitle) {
        context.read<TodoBloc>().add(
          isNew
              ? TodoEvent.createList(titleController.text)
              : TodoEvent.updateTodoList(
                  listId: widget.listId,
                  title: titleController.text,
                ),
        );
      },
      onToggle: (taskId, isDone) {
        context.read<TodoBloc>().add(
          TodoEvent.toggleTask(
            taskId: taskId,
            isDone: isDone,
            listId: widget.listId,
          ),
        );
      },
      onAdd: (taskTitle) {
        context.read<TodoBloc>().add(
          isNew
              ? TodoEvent.createList(titleController.text)
              : TodoEvent.addTask(
                  listId: widget.listId,
                  title: taskTitle,
                  listTitle: titleController.text,
                ),
        );
      },
      onRemove: (taskId) {
        final match = tasks.firstWhereOrNull((t) => t.id == taskId);
        if (match != null) {
          context.read<TodoBloc>().add(
            TodoEvent.deleteTask(match.id, widget.listId),
          );
        }
      },
    );
  }
}
