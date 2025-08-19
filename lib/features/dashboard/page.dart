
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/features/add_to_list/presentation/home_page.dart';
import 'package:todo_app/features/settings/presentation/setting_page.dart';
import 'package:todo_app/routes/app_routes_names.dart';
import 'package:todo_app/widgets/navigations/bottom_navigation/bottom_navigation.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomNavScaffold(
      onFabTap: () {
        context.push(AppRoutes.addToListPage.path);
      },
      pages: [HomePage(), SettingPage()],
    );
  }
}
