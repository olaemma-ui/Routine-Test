import 'package:todo_app/routes/route_obj.dart';

abstract class AppRoutes {

  static final loginPage = RouteDeclaration(
    name: 'Login Page',
    path: '/login',
  );
  static final signupPage = RouteDeclaration(
    name: 'Signup Page',
    path: '/signup',
  );

  static final homePage = RouteDeclaration(
    name: 'Home Page',
    path: '/home',
  );
  
  static final addToListPage = RouteDeclaration(
    name: 'Add To List Page',
    path: '/add_to_list',
  );
  
  static final settingsPage = RouteDeclaration(
    name: 'Settings Page',
    path: '/settings',
  );

  static final onboarding = RouteDeclaration(
    name: 'Onboarding Page',
    path: '/onboarding',
  );
  
  static final welcomPage = RouteDeclaration(
    name: 'Welcome Page',
    path: '/welcome',
  );
}
