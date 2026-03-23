import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';
import 'package:islamic_app/onboarding/onboarding_quran.dart';

import '../common/widgets/header_widget.dart';

class OnboardingIslamic extends StatefulWidget {
  static const String routName="OnboardingIslamic";

  const OnboardingIslamic({super.key});

  @override
  State<OnboardingIslamic> createState() => _OnboardingIslamicState();
}

class _OnboardingIslamicState extends State<OnboardingIslamic> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderWidget(),
                SizedBox(height: 40),
                Image.asset("assets/kabba .png",
                  height:356 ,
                  width: 371,),
                SizedBox(height: 30),

                Text("Welcome To Islmi ",textAlign: TextAlign.center,
                  style:
                  TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 25),
                Text("We Are Very Excited To Have You In Our",
                style: TextStyle(
                  color: AppColors.goldColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("Community",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
          ),




        ],
      ),










    );
  }
}
