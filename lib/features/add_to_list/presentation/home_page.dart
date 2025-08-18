import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/di/injection.dart';
import 'package:todo_app/features/add_to_list/bloc/todo_bloc.dart';
import 'package:todo_app/features/add_to_list/presentation/widgets/states/empty_state.dart';
import 'package:todo_app/features/add_to_list/presentation/widgets/states/filled_state.dart';
import 'package:todo_app/routes/app_routes_names.dart';
import 'package:todo_app/widgets/navigations/bottom_navigation/bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomNavScaffold(
      onFabTap: () {
        context.push(AppRoutes.addToListPage.path);
      },
      child: BlocProvider<TodoBloc>(
        create: (_) => getIt<TodoBloc>()..add(const TodoEvent.fetchLists()),
        child: BlocConsumer<TodoBloc, TodoState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(DesignConstants.screenPadding),

              child: state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),

                loaded: (lists, todoList, error) {
                  if ((lists ?? []).isEmpty) {
                    return HomeEmptyState();
                  }
                  return HomeFilledState(todoList: lists ?? []);
                },

                orElse: () => const SizedBox.shrink(),
              ),
            );
          },
        ),
      ),
    );
  }
}
