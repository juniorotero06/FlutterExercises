import 'package:flutter/material.dart';

import 'package:peliculas_app/screens/screens.dart';
import 'package:peliculas_app/themes/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) => const DetailsScreen()
      },
      theme: AppTheme.lightTheme,
    );
  }
}
