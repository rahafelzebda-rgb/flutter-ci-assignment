import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/app_color.dart';
import 'package:islamic_app/data/models/hadeeth_model.dart';

import '../../common/widgets/bd_layout_widget.dart';
import '../../common/widgets/header_widget.dart';
import '../../gen/assets.gen.dart';

class HadeethTabPage extends StatefulWidget {
  const HadeethTabPage({super.key});
  @override
  State<HadeethTabPage> createState() => _HadeethTabPageState();
}

class _HadeethTabPageState extends State<HadeethTabPage> {
  PageController _controller= PageController(viewportFraction: .6,initialPage: 0);
  int currentPAge=0;
  List<HadeethModel>hadeethModelis=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAhadeeth();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [BdLayoutWidget(imagePAth: Assets.hadeethJpg.path),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 20),
            child: Column(
              children: [
                HeaderWidget(),
                SizedBox(height: 55 ),
                Expanded(child: PageView.builder(
                  onPageChanged: (value){
                    currentPAge=value;
                    print("currant page->$value");
                    setState(() {

                    });
                  },
                  controller:_controller,
                  scrollDirection: Axis.horizontal,
                    itemCount: hadeethModelis.length,
                    itemBuilder: (context,index){
                    bool isActive=index==currentPAge;
                    print("index=$index,isActive=$isActive");
                         return Padding(
                           padding:  EdgeInsets.symmetric(vertical:isActive?0: 20.0,horizontal: 4),
                           child: Card(
                             color: AppColors.goldColor,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadiusGeometry.circular(24 )
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(top: 12.0),
                               child: Stack(
                                 alignment: Alignment(0, 0),
                                 children: [
                                   Image.asset(Assets.hadeethCard.path,fit: BoxFit.fill,width: 312,),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(vertical: 43.0,horizontal: 22),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                       Text(
                                         hadeethModelis[index].title
                                       ,style:
                                       TextStyle(color: AppColors.blackColor,
                                           fontSize: 24,
                                           fontWeight: FontWeight.bold),
                                       ),
                                         Expanded(
                                           child: SingleChildScrollView(
                                             child: Text(
                                               textDirection: TextDirection.rtl,
                                               textAlign: TextAlign.justify,
                                               hadeethModelis[index].content
                                               ,style:
                                             TextStyle(color: AppColors.blackColor,
                                                 fontSize: 16,
                                                 fontWeight: FontWeight.bold),),
                                           ),
                                         ),
                                       ],),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         );
                    }),),
              ],
            ),
          ),
        )




      ],
    );
  }
  loadAhadeeth() async{
    String ahadeeth=await rootBundle.loadString("assets/Hadeeth/ahadeth.txt");
    List<String> ahadeethlis=ahadeeth.trim().split("#");
    List<HadeethModel> ahadeethFinalList=[];
    for(var i=0;i<ahadeethlis.length;i++){
      String hadeeth=ahadeethlis[i].trim();
      String title=hadeeth.split("\n").first;
      int titleLength= title.length;
      String hadeethContet=ahadeethlis[i].substring(titleLength);
      ahadeethFinalList.add (
      HadeethModel(content: hadeethContet,title: title,number: i+1)
      );
    }
    hadeethModelis=ahadeethFinalList;
    setState(() {

    });
  }
}
