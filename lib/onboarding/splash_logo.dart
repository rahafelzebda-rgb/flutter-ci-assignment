
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';
import 'package:islamic_app/onboarding/onboarding_splash.dart';

class SplashLogo  extends StatefulWidget {
  static const  String routName="SplashLogo";
  const SplashLogo({super.key});

  @override
  State<SplashLogo> createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds:4 ),(){
      if(mounted){
        Navigator.pushNamed(context, OnboardingSplash.routName);
      }
    }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(



      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.blackColor,
        child: Image.asset("assets/OBJECTS.png"),

      ),



    );
  }
}
