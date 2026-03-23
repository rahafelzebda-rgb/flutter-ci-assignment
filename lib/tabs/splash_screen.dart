import 'package:flutter/material.dart';
import 'package:islamic_app/gen/assets.gen.dart';

import '../onboarding/splash_logo.dart';

class SplashScreen extends StatefulWidget {
  static const String routName = "splashScreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds:4 ),(){
      if(mounted){
        Navigator.pushReplacementNamed(context, SplashLogo.routName);
      }
    }

    );
  }
  Widget build(BuildContext context) {
    return
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
                image: Assets.splashScreen.provider(),
            fit: BoxFit.fill,
          ),
        ),
       child:  Center(
          child: Stack(
               children: [
              Positioned(
                  top: 0,right: 10,
                  child: Assets.glow1.image()),
                 Positioned(
                     bottom:80,right: 0,

                     child: Assets.shape041.image()),
                 Positioned(
                     top: 190,
                     child: Assets.shape071.image()),
                 Positioned(
                          top: 10,
                          left: 0, right: 0,
                          child: Assets.mosque.image()),
                      Positioned(
                          top: 301,
                          left:0 ,right: 0,

                          child:
                      Assets.islamiLogo1.image(height: 232,width: 174)),





                ],
          ),
        ),
      );
  }
}