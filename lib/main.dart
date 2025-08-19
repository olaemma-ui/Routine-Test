import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/di/injection.dart';
import 'package:todo_app/core/theme/app_theme.dart';
import 'package:todo_app/core/utils/size_config.dart';
import 'package:todo_app/features/add_to_list/bloc/todo_bloc.dart';
import 'package:todo_app/features/auth/bloc/auth_status_bloc.dart';
import 'package:todo_app/routes/router.dart';
import 'package:todo_app/widgets/navigations/bottom_navigation/bottom_navigation_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await dotenv.load();
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  configureDependencies();
  getIt<AuthStatusBloc>().add(CheckSession());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationBloc()),
        BlocProvider(
          create: (_) => getIt<AuthStatusBloc>()..add(CheckSession()),
        ),
        BlocProvider(
          create: (_) => getIt<TodoBloc>()..add(const TodoEvent.fetchLists()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Routine',
        darkTheme: AppTheme.darkMode,
        theme: AppTheme.lightMode,
        themeMode: ThemeMode.system,
        routerConfig: AppRouter.routes,
      ),
    );
  }
}
