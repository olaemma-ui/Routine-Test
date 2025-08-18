import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';
import 'package:todo_app/features/add_to_list/presentation/widgets/todo_card.dart';
import 'package:todo_app/routes/app_routes_names.dart';

class HomeFilledState extends StatelessWidget {
  final List<TodoListEntity> todoList;
  const HomeFilledState({super.key, required this.todoList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .655,
        mainAxisSpacing: 8.fem,
        crossAxisSpacing: 8.fem,
      ),
      itemCount: todoList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.push(
              '${AppRoutes.addToListPage.path}/${todoList[index].id}/${todoList[index].title}',
            );
          },
          child: TodoCard(todoListEntity: todoList[index]),
        );
      },
    );
  }
}
