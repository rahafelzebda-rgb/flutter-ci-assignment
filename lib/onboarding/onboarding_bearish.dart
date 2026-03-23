import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';
import 'package:islamic_app/onboarding/onboarding_quran_radio.dart';

import '../common/widgets/header_widget.dart';

class OnboardingBearish extends StatefulWidget {
  static const String routName="OnboardingIslamic";

  const OnboardingBearish({super.key});

  @override
  State<OnboardingBearish> createState() => _OnboardingIslamicState();
}

class _OnboardingIslamicState extends State<OnboardingBearish> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
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
                Image.asset("assets/Bearish.png",
                  height:356 ,
                  width: 371,),
                SizedBox(height: 30),

                Text("Bearish ",textAlign: TextAlign.center,
                  style:
                  TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 25),
                Text("Praise the name of your Lord, the Most",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(" High",
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
