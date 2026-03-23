import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:islamic_app/app_color.dart';

import 'package:islamic_app/data/models/sura_model.dart';



import '../../gen/assets.gen.dart';





class SuraDetails_page extends StatefulWidget {

  const SuraDetails_page({super.key});

  static const String routeName="/suraDetails";



  @override

  State<SuraDetails_page> createState() => _SuraDetails_pageState();

}



class _SuraDetails_pageState extends State<SuraDetails_page> {

  List<String> suraAyat=[];

  bool IsFirsetBuild=true;

  @override

  Widget build(BuildContext context) {

    SuraModel suraData=

         ModalRoute.of(context)?.settings.arguments as SuraModel;



    if(IsFirsetBuild){

      loadsura(suraData.number);

      IsFirsetBuild=false;

    }

    return Scaffold(

      appBar: AppBar(

        title: Text(suraData.enName),

        centerTitle: true,

      ),

      body: Container(

        decoration: BoxDecoration(

          image: DecorationImage(

            image: AssetImage(Assets.suraDetailsPage.path),

          ),

        ),

        child: Center(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              Padding(

                padding: const EdgeInsets.only(top: 24.0,bottom: 20.0),

                child: Text(suraData.arName,

                  style: TextStyle(

                      fontSize: 24,

                      fontWeight: FontWeight.bold,

                      color: AppColors.goldColor ),),

              ),

              Expanded(

                child: SingleChildScrollView(

                  padding: EdgeInsets.all(20),

                  child: RichText(

                    textDirection: TextDirection.rtl,

                    textAlign: TextAlign.justify,

                    text:

                    TextSpan(

                      style: TextStyle(

                        color: AppColors.goldColor,

                        fontSize: 16,

                        fontWeight: FontWeight.bold,



                      ),

                      children:

                      List.generate(suraAyat.length,(index)=>TextSpan(

                          text: suraAyat[index]+"(${index+1})"



                      ),

                      ),

                    ),),),

              ),



              SizedBox(height: 100,)

            ],

          ),

        ),

      ),

















    );

  }



  Future<void> loadsura(int id) async{

    String sursContent= await rootBundle.loadString("assets/Suras/$id.txt");

    List<String>ayat=sursContent.trim().split("\n");

    suraAyat=ayat;

    setState(() {



    });

  }}