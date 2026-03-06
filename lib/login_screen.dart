import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(


          children: [
            Container(
              margin: EdgeInsets.all(30),
                width: 200,
                height: 200,
                child: Image.asset("assets/Facebook.webp")),
            Container(
              margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: "Mobile Number or Email Address",
                  errorText: "Invalid ",
                  border: OutlineInputBorder(),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),

                ),
              ),
            ),
            Container(
                  margin: EdgeInsets.only(right: 20,left: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText:"Password",
                      border: OutlineInputBorder(),

                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.grey ),

                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)
                      )
                    ),
                  ),
                ),
            Container(
               margin: EdgeInsets.only(top: 40,right: 20,left: 20),
               width: 400,
               height: 50,
               child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   backgroundColor:Color(0xFF1877F2),
                 ),
                 onPressed: () {},
                 child: Text("Login",style: TextStyle(color: Colors.white),),
               ),
               
             ),
            Container(
              margin: EdgeInsets.only(top: 10),
                child: Text("Forgotten Password ?",style:TextStyle(color: Colors.grey),)),
            Container(
              margin: EdgeInsets.only(top: 40,right: 20,left: 20),

              child: Column(

                children: [
                  Container(
                    margin: EdgeInsets.only(top: 130,bottom: 10),
                    width: 400,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            color: Colors.blue, // لون الحدود
                            width: 1,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Create Account"),
                    )

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
                    ),

                  ),



                ],
              ),

            ),









          ],



        ),
      ),
    );
  }



}