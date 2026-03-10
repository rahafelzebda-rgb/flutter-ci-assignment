import 'package:flutter/material.dart';

import '../../common/widgets/bd_layout_widget.dart';
import '../../gen/assets.gen.dart';

class HadeethTabPage extends StatelessWidget {
  const HadeethTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [BdLayoutWidget(imagePAth: Assets.hadeeth.path)],
    );
  }
}
