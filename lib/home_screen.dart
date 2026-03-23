import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_app/app_color.dart';
import 'package:islamic_app/gen/assets.gen.dart';
import 'package:islamic_app/tabs/hadeeth_tab/hadeeth_tab_page.dart';
import 'package:islamic_app/tabs/quran_tab/quran_tab_page.dart';
import 'package:islamic_app/tabs/radio_tab/radio_tab_page.dart';
import 'package:islamic_app/tabs/sebha_tab/sebha_tab_page.dart';
import 'package:islamic_app/tabs/splash_screen.dart';
import 'package:islamic_app/tabs/times_tab/times_tab_page.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currantIndex = 0;
  List<Widget> tabs = [
    //SplashScreen(),
    QuranTabPage(),
    HadeethTabPage(),
    SebhaTabPage(),
    RadioTabPage(),
    TimesTabPage(),

  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currantIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currantIndex,
          onTap: (value) {
            currantIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            customBottomNavBarITem(icon: Assets.quran, label: "Quran"),
            customBottomNavBarITem(icon: Assets.icHadeth, label: "Hadeeth"),
            customBottomNavBarITem(icon: Assets.icSebha, label: "Sebha"),
            customBottomNavBarITem(icon: Assets.icRadio, label: "Radio"),
            customBottomNavBarITem(icon: Assets.icTime, label: "Time"),
          ]),
    );
  }

  BottomNavigationBarItem customBottomNavBarITem(
      {required String icon, required label}) {
    return BottomNavigationBarItem(
        activeIcon: Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(66),
            color: AppColors.blackColor.withValues(alpha: .6),
          ),
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        icon: SvgPicture.asset(icon),
        label: label);
  }
}
