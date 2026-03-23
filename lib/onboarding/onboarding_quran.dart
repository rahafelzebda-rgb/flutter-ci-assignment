import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';
import 'package:islamic_app/onboarding/onboarding_bearish.dart';

import '../common/widgets/header_widget.dart';

class OnboardingQuran extends StatefulWidget {
  static const String routName="OnboardingIslamic";

  const OnboardingQuran({super.key});

  @override
  State<OnboardingQuran> createState() => _OnboardingIslamicState();
}

class _OnboardingIslamicState extends State<OnboardingQuran> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
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
                Image.asset("assets/quran_image.png",
                  height:356 ,
                  width: 371,),
                SizedBox(height: 30),

                Text("Reading the Quran ",
                  textAlign: TextAlign.center,
                  style:
                  TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 25),

                Text("Read, and your Lord is the Most Generous",
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
