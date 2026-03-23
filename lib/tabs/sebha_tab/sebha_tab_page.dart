import 'package:flutter/material.dart';

import '../../app_color.dart';
import '../../common/widgets/bd_layout_widget.dart';
import '../../common/widgets/header_widget.dart';
import '../../gen/assets.gen.dart';
import 'athkar_sebha.dart';

class SebhaTabPage extends StatefulWidget {
  const SebhaTabPage({super.key});

  @override
  State<SebhaTabPage> createState() => _SebhaTabPageState();

}

class _SebhaTabPageState extends State<SebhaTabPage> {
  final AthkarSebha thekr = AthkarSebha();
  @override
  Widget build(BuildContext context) {
    return Stack(
   children: [
     Image.asset("assets/BackgroungSebha.png",
     width: double.infinity,
       height:double.infinity ,
       fit: BoxFit.fill,),
      Container(
        width: double.infinity,
        height:double.infinity ,
        color: Colors.black.withValues(alpha: .6),
      ),
     Container(
       width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
         gradient: LinearGradient(
             end:AlignmentGeometry.bottomCenter ,
             begin: AlignmentGeometry.topCenter,

             colors: [
           Colors.black.withValues(alpha: .4),
           Colors.black.withValues(alpha: .7),

             ])
       ),
     ),
     SafeArea(
       child:  Padding(
         padding: const EdgeInsets.only(top: 30.0,left:40 ,right:40 ),
         child: Column(

         crossAxisAlignment: CrossAxisAlignment.stretch,

         mainAxisAlignment: MainAxisAlignment.start,
         children: [
             HeaderWidget(),
           SizedBox(height: 35),
           Text(thekr.gettitle(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35
            ),
            ),
           SizedBox(height: 35),

     Container(
  child: Stack(
    clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -21,
          left: 22,
          right: 0,
          child: Image.asset("assets/Mask group.png",
          height: 60,
          width: 50,),
        ),


        GestureDetector(
          onTap: () {
            setState(() {
              thekr.clickthkar();
            });
          },
          child: Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/SebhaBody.png",
                  height: 381,
                  width: 379,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      thekr.getthkar(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${thekr.count}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    ],
  ),
),

         ],
              ),
       )
     )
   ]


    );
  }
}
