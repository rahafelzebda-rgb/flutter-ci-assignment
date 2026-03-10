import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';

class BdLayoutWidget extends StatelessWidget {
  const BdLayoutWidget({super.key, required this.imagePAth});
  final String imagePAth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imagePAth,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.blackColor,
                AppColors.blackColor.withValues(alpha: .7),
              ],
              begin: Alignment.bottomCenter,
              end: AlignmentGeometry.topCenter,
            ),
          ),
        ),
      ],
    );
  }
}
