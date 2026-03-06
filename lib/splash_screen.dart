import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 230),
                width: 200,
                  height: 200,
                  child: Image.asset("assets/Facebook.webp")),

              Container(
                  child: Text("From",style: TextStyle(
                      color:Color(0xFF898F9C),
                  ),),

              ),

              Container(

                width: 400,
                height: 40,

                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/metalogo.png"),
                    Text("Meta",style: TextStyle(fontSize: 24, color:Color(0xFF1877F2),
                    ),),
                  ],
                )
              )




            ],



          ),
        ),
      ),





    );
  }

}