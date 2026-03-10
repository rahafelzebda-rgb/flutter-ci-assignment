import 'package:flutter/material.dart';
import 'package:islamic_app/gen/assets.gen.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.imgHeader.image(width: 300, height: 140);
  }
}
