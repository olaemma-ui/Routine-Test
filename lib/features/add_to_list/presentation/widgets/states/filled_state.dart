import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/constants/svg_assets.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_typography.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';
import 'package:todo_app/features/add_to_list/presentation/widgets/todo_card.dart';
import 'package:todo_app/routes/app_routes_names.dart';

class HomeFilledState extends StatelessWidget {
  final List<TodoListEntity> todoList;
  const HomeFilledState({super.key, required this.todoList});

  @override
  Widget build(BuildContext context) {
    final cardBg = Theme.of(context).shadowColor;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      // spacing: 16,
      children: [
        Container(
          padding: EdgeInsets.all(12.fem),
          margin: EdgeInsets.only(top: 24.fem),
          decoration: BoxDecoration(
            color: cardBg,
            borderRadius: BorderRadius.circular(DesignConstants.borderRadiusL),
          ),
          child: Row(
            spacing: 30.fem,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8.fem,
                  children: [
                    Text(
                      'Good morning, Levin!',
                      style: AppTypography.textExtraLarge,
                    ),
                    Text(
                      'You have successfully finished 2 lists.',
                      style: AppTypography.textMedium,
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(SvgAssets.completing),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .655,
              mainAxisSpacing: 8.fem,
              crossAxisSpacing: 8.fem,
            ),
            cacheExtent: 300,
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
          ),
        ),
      ],
    );
  }
}
