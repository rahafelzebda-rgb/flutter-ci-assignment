import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';

import '../common/widgets/header_widget.dart';

class OnboardingQuranRadio extends StatefulWidget {
  static const String routName="OnboardingIslamic";

  const OnboardingQuranRadio({super.key});

  @override
  State<OnboardingQuranRadio> createState() => _OnboardingIslamicState();
}

class _OnboardingIslamicState extends State<OnboardingQuranRadio> {
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
                Image.asset("assets/mike.png",
                  height:356 ,
                  width: 371,),
                SizedBox(height: 30),

                Text("Holy Quran Radio ",textAlign: TextAlign.center,
                  style:
                  TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 25),
                Text("You can listen to the Holy Quran Radio",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(" through the application for free and easily",
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
