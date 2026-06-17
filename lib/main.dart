import 'package:cerm_movies_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:cerm_movies_app/config/theme/app_theme.dart';
//import 'package:cerm_movies_app/presentation/screens/screens.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  print(dotenv.env['MOVIEDB_KEY']);
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // home: HomeScreen(),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
