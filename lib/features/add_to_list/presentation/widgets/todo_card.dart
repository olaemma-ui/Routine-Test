import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_typography.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';

class TodoCard extends StatelessWidget {
  final TodoListEntity todoListEntity;
  final void Function(String task, bool? checked)? onChanged;

  const TodoCard({super.key, required this.todoListEntity, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.hintColor;
    return Card(
      child: Padding(
        padding: EdgeInsetsGeometry.all(16.fem),
        child: Column(
          spacing: 4.fem,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(todoListEntity.title, style: AppTypography.textLarge),
            Gap(8.fem),
            for (
              int i = 0;
              i < ((todoListEntity.tasks?.length ?? 0) - 1) && i < 5;
              i++
            ) ...[
              Row(
                spacing: 8.fem,
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) => onChanged?.call(
                        todoListEntity.tasks?[i].title ?? '',
                        value,
                      ),
                    ),
                  ),
                  Text(
                    todoListEntity.tasks?[i].title ?? '',
                    style: AppTypography.textSmall,
                  ),
                ],
              ),
              Gap(4.fem),
            ],

            if ((todoListEntity.tasks?.length ?? 0) > 5)
              Row(
                spacing: 16.fem,
                children: [
                  Icon(Icons.add_rounded, size: 20.fem, color: textColor),
                  Text(
                    '${(todoListEntity.tasks?.length ?? 0)} ticked items',
                    style: AppTypography.textSmall.copyWith(color: textColor),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
