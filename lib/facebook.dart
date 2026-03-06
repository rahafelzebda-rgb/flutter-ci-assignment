import 'package:facebook/view_story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Facebook extends StatelessWidget {

  final List<String> storyImages = [
    "assets/model2.jpg",
    "assets/image4.jpg",
    "assets/image3.jpg",
    "assets/image1.jpg",
  ];

  final List<String> storyImage = [
    "assets/f4ed9cb003135a69b82a4f1731b2e12c03a25802.jpg",
    "assets/model4.jpg",
    "assets/model3.jpg",
    "assets/model1.jpg",

  ];


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Facebook",
          style: TextStyle(color:Color(0xFF1877F2),fontSize: 30,fontWeight: FontWeight.bold
          ),),
        actions: [
          IconButton(onPressed: (){},
              icon: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset("assets/add.png"))),
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("assets/search-interface-symbol.png"),
            ),
          ),
          IconButton(onPressed: (){},
              icon: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset("assets/messenger.png"))),

        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){},
                      icon: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset("assets/home.png",color: Color(0xFF1877F2)),
                      )),

                  Container(
                    width: 30,
                    height: 2,
                    color: Colors.blue,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){},
                      icon: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset("assets/reels.png"),
                      )),






                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.storefront, color: Colors.grey[600], size: 36),
                  SizedBox(height: 4),
                  Container(
                    width: 30,
                    height: 2,
                    color: Colors.transparent,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){},
                      icon: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset("assets/user.png"),
                      )),






                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){},
                      icon: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset("assets/bell.png"),
                      )),






                ],
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/model2.jpg"),
              )


            ],
          ),
        ),
      ),


      body: Column(
        children: [

          Divider(height: 10, color: Colors.grey),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(
                      "assets/model2.jpg"),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "What's in your mind?",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.photo_library, color: Colors.green),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          Divider(height: 10, color: Colors.grey),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: storyImages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Stack(
                    children: [

                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          storyImages[index],
                          width: 120,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (index!=0)
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                              // border
                            ),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage(storyImage[index]),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),



          Expanded(
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  return  Column(
                    children: [
                      Divider(height: 10, color: Colors.grey),
                      Container(color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child:  CircleAvatar(

                                    radius: 33,
                                    backgroundImage: AssetImage("assets/model4.jpg"),
                                  ),
                                ),


                                Container(
                                  width: 200,
                                  child: Column(children: [
                                    Row(
                                      children: [
                                        Container(margin: EdgeInsets.only(bottom: 14,left: 10),
                                            child: Text("Rahaf elZebda",style: TextStyle( color: Colors.black,fontSize: 20),)),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Container(
                                            padding: EdgeInsets.all(3),
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text("8h .",style: TextStyle(color: Colors.grey,fontSize: 14),)),
                                        Icon(Icons.public,color: Colors.grey)

                                      ],
                                    ),
                                  ],),),

                                Container(
                                    width: 100,
                                    alignment: Alignment.topRight,
                                    child: Icon(Icons.more_horiz)
                                ),



                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/image2.jpg",
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                            ),

                          ),
                          Container(

                            color: Colors.white,
                            margin: EdgeInsets.only(left: 10),
                            child: Row(

                              children: [
                                Container(

                                  child: Column(
                                    children: [
                                      ImageIcon(AssetImage("assets/like.png"),color: Colors.indigo),


                                    ],
                                  ),
                                ),

                                Container(
                                  child: Column(
                                    children: [
                                      ImageIcon(AssetImage("assets/love.png"),color: Colors.red),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      ImageIcon(AssetImage("assets/happy.png")),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 200),
                                  child: Column(
                                    children: [
Text("40 comments",style: TextStyle(color: Colors.grey),)                                    ],
                                  ),
                                ),



                              ],
                            ),

                          ),

                        ],

                      ),
                      Divider(height: 10, color: Colors.grey),
                      Container(
                        margin: EdgeInsets.only(left: 10),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(

                                  child: Row(
                                    children: [
                                      ImageIcon(AssetImage("assets/like.png"),color: Colors.indigo),
                        Text("Like")

                                    ],
                                  ),
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                Container(

                                  child: Row(
                                    children: [
                                      ImageIcon(AssetImage("assets/chat (1).png"),color: Colors.indigo),
                                      Text("Comments")

                                    ],
                                  ),
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                Container(

                                  child: Row(
                                    children: [
                                      Icon(Icons.share),
                                      Text("Share")

                                    ],
                                  ),
                                ),

                              ],
                            ),


                          ],
                        ),
                      )
                    ],
                  );


                }

            ),
          ),





        ],
      ),
    );
  }
}