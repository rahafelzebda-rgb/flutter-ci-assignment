import 'package:flutter/material.dart';

import 'facebook.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
debugShowCheckedModeBanner: false,
     home: Home_screen(),



   );
  }

}