
import 'package:facebook/view_story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_screen extends StatelessWidget {
  final List<String> storyImages = [
    "assets/096ff7fd728e880bca931a69a1417a5f.jpg",
    "assets/bc157ded7a3bd287254f317ae428e2275cbea238.jpg",
    "assets/a132ed9f11168e7ec5ea5a2b1f482e364ce00ef7.png",
    "assets/886d63dd3ed400cb6be6928b8bbdbc9f927c2621.jpg",
  ];

  final List<String> storyImage = [
    "assets/f4ed9cb003135a69b82a4f1731b2e12c03a25802.jpg",
    "assets/f4ed9cb003135a69b82a4f1731b2e12c03a25802.jpg",
    "assets/607e39414f72d93dbd0f7e958bffb95a646f64f8.jpg",
    "assets/5166341052628c980297c80f8784694860093270 (1).jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: ListView(
          children: [

            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Facebook",
                    style: TextStyle(
                      color: Color(0xFF1877F2),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset("assets/add.png"),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset("assets/search-interface-symbol.png"),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset("assets/messenger.png"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            "assets/home.png",
                            color: Color(0xFF1877F2),
                          ),
                        ),
                      ),
                      Container(width: 30, height: 2, color: Colors.blue),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset("assets/reels.png"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.storefront, color: Colors.grey[600], size: 36),
                      SizedBox(height: 4),
                      Container(width: 30, height: 2, color: Colors.transparent),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset("assets/user.png"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset("assets/bell.png"),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/096ff7fd728e880bca931a69a1417a5f.jpg"),
                  ),
                ],
              ),
            ),

            Divider(height: 10, color: Colors.grey),

            // =========================
            // What's in your mind
            // =========================
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/096ff7fd728e880bca931a69a1417a5f.jpg"),
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
                        if (index != 0)
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Container(
                              width: 40,
                              height: 40,
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
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


            ListView.builder(
              itemCount: 7,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Divider(height: 10, color: Colors.grey),

                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: CircleAvatar(
                                  radius: 33,
                                  backgroundImage: AssetImage(
                                    "assets/429820590_791043733050594_2437304548159507703_n.jpg",
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 14, left: 10),
                                          child: Text(
                                            "Route",
                                            style: TextStyle(color: Colors.black, fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(3),
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "8h .",
                                            style: TextStyle(color: Colors.grey, fontSize: 14),
                                          ),
                                        ),
                                        Icon(Icons.public, color: Colors.grey)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                alignment: Alignment.topRight,
                                child: Icon(Icons.more_horiz),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    Image.asset(
                      "assets/394207767_709508957870739_4789263993603935944_n (1).jpg",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),

                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                ImageIcon(AssetImage("assets/heart (1).png")),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                ImageIcon(AssetImage("assets/chat (1).png")),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                ImageIcon(AssetImage("assets/send.png")),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 240),
                            child: Column(
                              children: [
                                ImageIcon(AssetImage("assets/save-instagram.png")),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(height: 10, color: Colors.grey),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
































//import 'package:facebook/view_story.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// class Home_screen extends StatelessWidget {
//
//   final List<String> storyImages = [
//     "assets/096ff7fd728e880bca931a69a1417a5f.jpg",
//     "assets/bc157ded7a3bd287254f317ae428e2275cbea238.jpg",
//     "assets/a132ed9f11168e7ec5ea5a2b1f482e364ce00ef7.png",
//     "assets/886d63dd3ed400cb6be6928b8bbdbc9f927c2621.jpg",
//   ];
//
//   final List<String> storyImage = [
//     "assets/f4ed9cb003135a69b82a4f1731b2e12c03a25802.jpg",
//     "assets/f4ed9cb003135a69b82a4f1731b2e12c03a25802.jpg",
//     "assets/607e39414f72d93dbd0f7e958bffb95a646f64f8.jpg",
//     "assets/5166341052628c980297c80f8784694860093270 (1).jpg",
//
//   ];
//
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       backgroundColor: Colors.white,
//
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Text("Facebook",
//          style: TextStyle(color:Color(0xFF1877F2),fontSize: 30,fontWeight: FontWeight.bold
//           ),),
//           actions: [
//             IconButton(onPressed: (){},
//                 icon: SizedBox(
//                     width: 30,
//                     height: 30,
//                     child: Image.asset("assets/add.png"))),
//             IconButton(
//               onPressed: () {},
//               icon: SizedBox(
//                 width: 30,
//                 height: 30,
//                 child: Image.asset("assets/search-interface-symbol.png"),
//               ),
//             ),
//             IconButton(onPressed: (){},
//                 icon: SizedBox(
//                     width: 30,
//                     height: 30,
//                     child: Image.asset("assets/messenger.png"))),
//
//           ],
//           bottom: PreferredSize(
//             preferredSize: Size.fromHeight(60),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(onPressed: (){},
//                         icon: SizedBox(
//                             width: 30,
//                             height: 30,
//                             child: Image.asset("assets/home.png",color: Color(0xFF1877F2)),
//                    )),
//
//                     Container(
//                       width: 30,
//                       height: 2,
//                       color: Colors.blue,
//                     ),
//    ],
//                 ),
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(onPressed: (){},
//                         icon: SizedBox(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/reels.png"),
//                         )),
//
//
//
//
//
//
//                   ],
//                 ),
//                 Column(
//                    mainAxisSize: MainAxisSize.min,
//                   children: [
//                      Icon(Icons.storefront, color: Colors.grey[600], size: 36),
//                      SizedBox(height: 4),
//                      Container(
//                        width: 30,
//                        height: 2,
//                        color: Colors.transparent,
//                      ),
//                   ],
//                  ),
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(onPressed: (){},
//                         icon: SizedBox(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/user.png"),
//                         )),
//
//
//
//
//
//
//                   ],
//                 ),
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(onPressed: (){},
//                         icon: SizedBox(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/bell.png"),
//                         )),
//
//
//
//
//
//
//                   ],
//                 ),
//                 CircleAvatar(
//                   radius: 20,
//                   backgroundImage: AssetImage("assets/096ff7fd728e880bca931a69a1417a5f.jpg"),
//                 )
//
//
//               ],
//             ),
//           ),
//         ),
//       body: Column(
//         children: [
//
//           Divider(height: 10, color: Colors.grey),
//
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 10),
//             child: Row(
//               children: [
//                 const CircleAvatar(
//                   radius: 22,
//                   backgroundImage: AssetImage(
//                       "assets/096ff7fd728e880bca931a69a1417a5f.jpg"),
//                 ),
//                 SizedBox(width: 12),
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: "What's in your mind?",
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.photo_library, color: Colors.green),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//
//           Divider(height: 10, color: Colors.grey),
//           SizedBox(
//             height: 200,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: storyImages.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8),
//                   child: Stack(
//                     children: [
//
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: Image.asset(
//                           storyImages[index],
//                           width: 120,
//                           height: 180,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                      if (index!=0)
//                       Positioned(
//                         top: 8,
//                         left: 8,
//                         child: Container(
//                           width: 40,
//                           height: 40,
//                           padding: EdgeInsets.all(2),
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.blue
//                             // border
//                           ),
//                           child: CircleAvatar(
//                             radius: 18,
//                             backgroundImage: AssetImage(storyImage[index]),
//                           ),
//                         ),
//                       ),
//                     ],
//                 ),
//                 );
//               },
//             ),
//           ),
//
//
//
// Expanded(
//   child: ListView.builder(
//       itemCount: 2,
//       scrollDirection: Axis.vertical,
//       itemBuilder: (context,index){
//         return  Column(
//             children: [
//               Divider(height: 10, color: Colors.grey),
//               Container(color: Colors.white,
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(left: 10),
//                           child:  CircleAvatar(
//
//                             radius: 33,
//                             backgroundImage: AssetImage("assets/429820590_791043733050594_2437304548159507703_n.jpg"),
//                           ),
//                         ),
//
//
//                         Container(
//                           width: 200,
//                           child: Column(children: [
//                             Row(
//                               children: [
//                                 Container(margin: EdgeInsets.only(bottom: 14,left: 10),
//                                     child: Text("Route",style: TextStyle( color: Colors.black,fontSize: 20),)),
//                               ],
//                             ),
//
//                             Row(
//                               children: [
//                                 Container(
//                                     padding: EdgeInsets.all(3),
//                                     margin: EdgeInsets.only(left: 10),
//                                     child: Text("8h .",style: TextStyle(color: Colors.grey,fontSize: 14),)),
//                                 Icon(Icons.public,color: Colors.grey)
//
//                               ],
//                             ),
//                           ],),),
//
//                         Container(
//                             width: 100,
//                             alignment: Alignment.topRight,
//                             child: Icon(Icons.more_horiz)
//                         ),
//
//
//
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Column(
//                 children: [
//                   Container(
//                     child: Image.asset(
//                       "assets/394207767_709508957870739_4789263993603935944_n (1).jpg",
//                       width: double.infinity,
//                       height: 200,
//                       fit: BoxFit.cover,
//                     ),
//
//                   ),
//                   Container(
//
//                     color: Colors.white,
//                     margin: EdgeInsets.only(left: 10),
//                     child: Row(
//
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(right: 10),
//
//                           child: Column(
//                             children: [
//                               ImageIcon(AssetImage("assets/heart (1).png")),
//
//                             ],
//                           ),
//                         ),
//
//                         Container(
//                           margin: EdgeInsets.only(right: 10),
//                           child: Column(
//                             children: [
//                               ImageIcon(AssetImage("assets/chat (1).png")),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(right: 10),
//                           child: Column(
//                             children: [
//                               ImageIcon(AssetImage("assets/send.png")),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(left: 240),
//                           child: Column(
//                             children: [
//                               ImageIcon(AssetImage("assets/save-instagram.png")),
//                             ],
//                           ),
//                         ),
//
//
//
//                       ],
//                     ),
//
//                   ),
//
//                 ],
//
//               ),
//               Divider(height: 10, color: Colors.grey),
//             ],
//           );
//
//
//       }
//
//   ),
// ),
//
//
//
//
//
//         ],
//       ),
//     );
//   }
// }