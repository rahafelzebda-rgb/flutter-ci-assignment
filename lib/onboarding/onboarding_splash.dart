import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';
import 'package:islamic_app/tabs/splash_screen.dart';

import '../common/widgets/header_widget.dart';
import '../home_screen.dart';
import 'onboarding_bearish.dart';
import 'onboarding_islamic.dart';
import 'onboarding_quran.dart';
import 'onboarding_quran_radio.dart';

class OnboardingSplash extends StatefulWidget {
  static const String routName = "OnboardingSplash";
  const OnboardingSplash({super.key});

  @override
  State<OnboardingSplash> createState() => _OnboardingSplashState();
}

class _OnboardingSplashState extends State<OnboardingSplash> {
  final PageController myController = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        children: [
          PageView(
            controller: myController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HeaderWidget(),
                      const SizedBox(height: 80),
                      Image.asset(
                        "assets/image_splashWelcom.png",
                        height: 315,
                        width: 298,
                      ),
                      const SizedBox(height: 80),
                      Text(
                        "Welcome To Islmi App",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.goldColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const OnboardingIslamic(),
              const OnboardingQuran(),
              const OnboardingBearish(),
              const OnboardingQuranRadio(),
            ],
          ),

          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    myController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    currentIndex == 0 ? "" : "Back",
                    style: const TextStyle(color: Color(0xFFE3BC7E), fontSize: 16),
                  ),
                ),

                Row(
                  children: List.generate(5, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: 8,
                      width: currentIndex == index ? 25 : 8,
                      decoration: BoxDecoration(
                        color: currentIndex == index
                            ? const Color(0xFFE3BC7E)
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }),
                ),

                TextButton(
                  onPressed: () {
                    if (currentIndex == 4) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        HomeScreen.routName,
                            (route) => false,
                      );
                    } else {
                      myController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(
                    currentIndex == 4 ? "Finish" : "Next",
                    style: const TextStyle(color: Color(0xFFE3BC7E), fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}