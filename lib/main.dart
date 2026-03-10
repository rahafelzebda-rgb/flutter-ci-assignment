import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      routes: {HomeScreen.routName: (context) => HomeScreen()},
      initialRoute: HomeScreen.routName,
    );
  }
}
