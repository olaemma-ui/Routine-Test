import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/constants/svg_assets.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_typography.dart';

/// Task object model
class Task {
  String id; // NEW: hold id from entity
  String title;
  bool isDone;

  Task({required this.id, required this.title, this.isDone = false});
}

/// NEW Stateless Todo List Widget
class TodoListWidget extends StatelessWidget {
  final List<Task> tasks;
  final void Function(String title)? onAdd;
  final void Function(String taskId)? onRemove;
  final void Function(String taskId, bool isDone)? onToggle;
  final void Function(String newTitle)? onTitleChanged;
  final TextEditingController controller;
  final TextEditingController newTaskController;

  const TodoListWidget({
    super.key,
    required this.tasks,
    required this.controller,
    required this.newTaskController,
    this.onAdd,
    this.onRemove,
    this.onToggle,
    this.onTitleChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconColor = theme.unselectedWidgetColor;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            style: AppTypography.displayMedium,
            decoration: InputDecoration(
              hintText: "Title",
              hintStyle: AppTypography.displayMedium.copyWith(color: iconColor),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            onChanged: onTitleChanged,
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ReorderableListView(
              onReorder:
                  (_, __) {}, // ignore reordering for now or lift to bloc
              children: [
                ...tasks
                    .where((tsk) => !tsk.isDone)
                    .map(
                      (task) => ListTile(
                        key: ValueKey(task.id),
                        leading: SvgPicture.asset(
                          SvgAssets.reArrange,
                          width: 30.fem,
                          height: 30.fem,
                        ),
                        minLeadingWidth: 0,
                        contentPadding: EdgeInsets.zero,
                        title: Row(
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: Checkbox(
                                value: task.isDone,
                                onChanged: (value) {
                                  onToggle?.call(task.id, value ?? false);
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                task.title,
                                style: TextStyle(
                                  decoration: task.isDone
                                      ? TextDecoration.lineThrough
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => onRemove?.call(task.id),
                        ),
                      ),
                    ),

                // Add new task input
                SizedBox(
                  key: GlobalKey(),
                  height: 60.fem,
                  child: Row(
                    children: [
                      Icon(Icons.add_rounded, color: iconColor),
                      Gap(16.fem),
                      Expanded(
                        child: TextField(
                          controller: newTaskController,
                          decoration: InputDecoration(
                            hintText: "Add task",
                            hintStyle: AppTypography.textMedium,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          onSubmitted: (value) {
                            onAdd?.call(value);
                            newTaskController.clear();
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                ...tasks
                    .where((tsk) => tsk.isDone)
                    .map(
                      (task) => ListTile(
                        key: ValueKey(task.id),
                        leading: SvgPicture.asset(
                          SvgAssets.reArrange,
                          width: 30.fem,
                          height: 30.fem,
                        ),
                        minLeadingWidth: 0,
                        contentPadding: EdgeInsets.zero,
                        title: Row(
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: Checkbox(
                                value: task.isDone,
                                onChanged: (value) {
                                  onToggle?.call(task.id, value ?? false);
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                task.title,
                                style: TextStyle(
                                  decoration: task.isDone
                                      ? TextDecoration.lineThrough
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => onRemove?.call(task.id),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
