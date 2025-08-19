
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/features/add_to_list/bloc/todo_bloc.dart';
import 'package:todo_app/features/add_to_list/presentation/widgets/states/empty_state.dart';
import 'package:todo_app/features/add_to_list/presentation/widgets/states/filled_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
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
    );
  }
}
