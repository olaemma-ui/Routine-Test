import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/widgets/navigations/bottom_navigation/bottom_navigation_bloc.dart';

class CustomBottomNavScaffold extends StatelessWidget {
  final List<Widget> pages; // Instead of just one child
  final VoidCallback onFabTap;

  const CustomBottomNavScaffold({
    super.key,
    required this.pages,
    required this.onFabTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: pages[state.selectedIndex], // dynamic switching
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.primary,
            elevation: 0,
            shape: const CircleBorder(),
            onPressed: onFabTap,
            child: const Icon(Icons.add, color: Colors.white),
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 6,
            elevation: 0,
            child: SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _NavIcon(
                    icon: Icons.home,
                    index: 0,
                    selected: state.selectedIndex == 0,
                  ),
                  const SizedBox(width: 40),
                  _NavIcon(
                    icon: Icons.settings,
                    index: 1,
                    selected: state.selectedIndex == 1,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _NavIcon extends StatelessWidget {
  final IconData icon;
  final int index;
  final bool selected;
  const _NavIcon({
    required this.icon,
    required this.index,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inactiveColor = theme.unselectedWidgetColor;
    final activeColor = theme.iconTheme.color;
    return IconButton(
      icon: Icon(icon, color: selected ? activeColor : inactiveColor),
      onPressed: () {
        context.read<NavigationBloc>().add(NavigateTo(index));
      },
    );
  }
}
