import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/home_screen.dart';
import 'package:islamic_app/onboarding/onboarding_islamic.dart';
import 'package:islamic_app/tabs/quran_tab/sura_details-page.dart';
import 'package:islamic_app/tabs/splash_screen.dart';

import 'onboarding/onboarding_bearish.dart';
import 'onboarding/onboarding_quran.dart';
import 'onboarding/onboarding_quran_radio.dart';
import 'onboarding/onboarding_splash.dart';
import 'onboarding/splash_logo.dart';

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
      routes: {

        SplashScreen.routName: (context) => SplashScreen(),
        SplashLogo.routName: (context) => SplashLogo(),
        OnboardingSplash.routName: (context) => OnboardingSplash(),


        HomeScreen.routName: (context) => HomeScreen(),
      SuraDetails_page.routeName: (context) => SuraDetails_page()

      },
      initialRoute: SplashScreen.routName,
    );
  }
}
