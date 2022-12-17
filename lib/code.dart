// // CarouselSlider.builder(
// //                 itemCount: imgList.length,
// //                 options: CarouselOptions(
// //                     height: 100,
// //                     scrollDirection: Axis.horizontal,
// //                     autoPlay: true,
// //                     onPageChanged: (index, reason) {
// //                       setState(() {
// //                         page = index;
// //                       });
// //                     }),
// //                 itemBuilder: (context, index, realIndex) {
// //                   return Container(
// //                     child: Image.asset(imgList[index],fit:BoxFit.cover),
// //                   );
// //                 },
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: imgList.map((url) {
// //                   int index = imgList.indexOf(url);
// //                   return Padding(
// //                     padding: const EdgeInsets.symmetric(horizontal: 3),
// //                     child: Container(
// //                       width: 13,
// //                       height: 13,
// //                       margin:
// //                           EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
// //                       decoration: BoxDecoration(
// //                         border: Border.all(color:Palette.button_color) ,
// //                         shape: BoxShape.circle,
// //                         color: page == index
// //                             ? Palette.white
// //                             : Palette.button_color
// //                       ),
// //                     ),
// //                   );
// //                 }).toList(),
// //               ),
// //               SizedBox
// //                 height: 5,
// //               ),
// // Container(
// //                   child: Expanded(
// //                     child: Column(
// //                       children: [
// //                         Stack(
// //                           children: [
// //                             Container(
// //                               child: Column(
// //                                 children: [
// //                                   Container(
// //                                     child: IconButton(
// //                                       padding: EdgeInsets.only(top: 0, left: 0),
// //                                       onPressed: () =>
// //                                           _scaffoldkey.currentState?.openDrawer(),
// //                                       icon: Image.asset(
// //                                           'assets/images/ic_menu_scan.png'),
// //                                       iconSize: 70,
// //                                     ),
// //                                   )
// //                                 ],
// //                               ),
// //                             ),
// //                             Container(
// //                               padding: EdgeInsets.only(top: 15, left: 70),
// //                               child: Image.asset('assets/images/ic_location.png',scale: 4,),
// //                             ),
// //                             Container(
// //                                padding: EdgeInsets.only(top: 18, left: 100),
// //                               child: Text("Grand Fuhr Arena",style: TextStyle(color: Palette.white,fontSize: 18),),
// //                             ),
// //                             Container(
// //                                padding: EdgeInsets.only(top: 0, left: 260),
                              
// //                             child: IconButton(
// //                               onPressed: () {
// //                                 Fluttertoast.showToast(
// //                                                 msg: "Cart",
// //                                                 toastLength: Toast.LENGTH_SHORT,
// //                                                 gravity: ToastGravity.BOTTOM,
// //                                                 timeInSecForIosWeb: 1,
// //                                                 backgroundColor: Palette.button_color,
// //                                                 textColor: Colors.white,
// //                                                 fontSize: 16.0);
// //                               },
// //                               icon: Image.asset('assets/images/ic_shopping_cart.png',scale: 4,),
// //                              // iconSize: 10,
// //                             )),
// //                              Container(
// //                             padding: EdgeInsets.only(top: 0, left: 300),
// //                             child: IconButton(
// //                               onPressed: () {
// //                                 Fluttertoast.showToast(
// //                                                 msg: "Notification",
// //                                                 toastLength: Toast.LENGTH_SHORT,
// //                                                 gravity: ToastGravity.BOTTOM,
// //                                                 timeInSecForIosWeb: 1,
// //                                                 backgroundColor:Palette.button_color,
// //                                                 textColor: Colors.white,
// //                                                 fontSize: 16.0);
// //                               },
                              
// //                               icon: Image.asset('assets/images/ic_notification_home.png',scale: 4,),
// //                               //iconSize: 10,
// //                             )),
// //                             Container(
// //                               child: GestureDetector(
// //                                 child: Container(
// //                                   child: Stack(
// //                                     children: [
// //                                       Container(
// //                                         padding: EdgeInsets.only(top: 165, left: 20),
// //                                         child: Image.asset('assets/images/ic_seaction.png',scale: 3,),
// //                                       ),
// //                                       Container(
// //                                         padding: EdgeInsets.only(top: 170, left: 65),
// //                                         child: Text("Floor \n 00",style: TextStyle(color: Palette.button_color,fontSize: 12),),
// //                                       ),
                                      
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ),
// //                             ), Container(
// //                               child: GestureDetector(
// //                                 child: Container(
// //                                   child: Stack(
// //                                     children: [
// //                                       Container(
// //                                         padding: EdgeInsets.only(top: 165, left: 100),
// //                                         child: Image.asset('assets/images/ic_seaction.png',scale: 3,),
// //                                       ),
// //                                       Container(
// //                                         padding: EdgeInsets.only(top: 170, left: 140),
// //                                         child: Text("Selection \n 00",style: TextStyle(color: Palette.button_color,fontSize: 12),),
// //                                       ),
                                      
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),
// //                              Container(
// //                               child: GestureDetector(
// //                                 child: Container(
// //                                   child: Stack(
// //                                     children: [
// //                                       Container(
// //                                         padding: EdgeInsets.only(top: 165, left: 190),
// //                                         child: Image.asset('assets/images/ic_row.png',scale: 3,),
// //                                       ),
// //                                       Container(
// //                                         padding: EdgeInsets.only(top: 170, left: 235),
// //                                         child: Text("Row \n 00",style: TextStyle(color: Palette.button_color,fontSize: 12),),
// //                                       ),
                                      
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),
// //                              Container(
// //                               child: GestureDetector(
// //                                 child: Container(
// //                                   child: Stack(
// //                                     children: [
// //                                       Container(
// //                                         padding: EdgeInsets.only(top: 165, left: 270),
// //                                         child: Image.asset('assets/images/ic_seat.png',scale: 3,),
// //                                       ),
// //                                       Container(
// //                                         padding: EdgeInsets.only(top: 170, left: 315),
// //                                         child: Text("Seat \n 00",style: TextStyle(color: Palette.button_color,fontSize: 12),),
// //                                       ),
                                      
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),
                           
                            
// //                           ],
// //                         ),

// //                       ],
// //                     ),
// //                   ),
// //                 ),


// // Expanded(
// //             flex: 1,
// //                               child: SingleChildScrollView(
// //                                 child: Padding(padding: EdgeInsets.all(1),
// //                                   child: Column(
// //                                     children: [
// //                                        CarouselSlider.builder(
// //                 itemCount: imgList.length,
// //                 options: CarouselOptions(
// //                     height: 100,
// //                     scrollDirection: Axis.horizontal,
// //                     autoPlay: true,
// //                     onPageChanged: (index, reason) {
// //                       setState(() {
// //                         page = index;
// //                       });
// //                     }),
// //                 itemBuilder: (context, index, realIndex) {
// //                   return Container(
// //                     child: Image.asset(imgList[index],fit:BoxFit.cover),
// //                   );
// //                 },
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: imgList.map((url) {
// //                   int index = imgList.indexOf(url);
// //                   return Padding(
// //                     padding: const EdgeInsets.symmetric(horizontal: 3),
// //                     child: Container(
// //                       width: 13,
// //                       height: 13,
// //                       margin:
// //                           EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
// //                       decoration: BoxDecoration(
// //                         border: Border.all(color:Palette.button_color
// //                         ) ,
// //                         shape: BoxShape.circle,
// //                         color: page == index
// //                             ? Palette.white
// //                             : Palette.button_color
// //                       ),
// //                     ),
// //                   );
// //                 }).toList(),
// //               ),
// //               SizedBox(height: 10,),
// //               Container(
// //                               padding: EdgeInsets.only(top: 0, right: 20, left: 20),
// //                               child: Row(
// //                                 children: [
// //                                   Expanded(
// //                                     child: GestureDetector(
// //                                       onTap: () {
// //                                         setState(() {
// //                                           byEmail = true;
// //                                         });
// //                                       },
// //                                       child: Stack(
// //                                         children: [
// //                                           Container(
// //                                             height: 40,
// //                                             alignment: Alignment.center,
// //                                             padding: EdgeInsets.symmetric(
// //                                                 horizontal: 10, vertical: 8),
// //                                             decoration: BoxDecoration(
// //                                                 color: byEmail
// //                                                     ? Palette.button_color
// //                                                     : Palette.white,
// //                                                 borderRadius: BorderRadius.only(
// //                                                     topLeft: Radius.circular(50),
// //                                                     bottomLeft:
// //                                                         Radius.circular(50))),
// //                                             child: Text("FOOD & DRINK"),
// //                                           ),
// //                                           Image.asset(
// //                                             'assets/images/ic_food.png',
// //                                             height: 30,
// //                                             width: 30,
// //                                           )
// //                                         ],
// //                                       ),
// //                                     ),
// //                                   ),
// //                                   Expanded(
// //                                     child: GestureDetector(
// //                                       onTap: () {
// //                                         setState(() {
// //                                           byEmail = false;
// //                                         });
// //                                       },
// //                                       child: Stack(
// //                                         children: [
// //                                           Container(
// //                                             height: 40,
// //                                             alignment: Alignment.center,
// //                                             padding: EdgeInsets.symmetric(
// //                                                 horizontal: 10, vertical: 8),
// //                                             decoration: BoxDecoration(
// //                                                 color: byEmail
// //                                                     ? Palette.white
// //                                                     : Palette.button_color,
// //                                                 borderRadius: BorderRadius.only(
// //                                                     topRight: Radius.circular(50),
// //                                                     bottomRight:
// //                                                         Radius.circular(50))),
// //                                             child: Text("APPAREL"),
// //                                           ),
// //                                           Image.asset(
// //                                             'assets/images/ic_apparel.png',
// //                                             height: 30,
// //                                             width: 30,
// //                                           )
// //                                         ],
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                               if (byEmail)
// //                               Row(
// //                                 children: [
// //                                   Container(
// //                                     alignment: Alignment.centerLeft,
// //                                     margin: EdgeInsets.only(top: 20, left: 20),
// //                                     child: Text(
// //                                       'RESTAURANTS',
// //                                       style: TextStyle(
// //                                           color: Palette.button_color,
// //                                           fontWeight: FontWeight.bold),
// //                                     ),
// //                                   ),
// //                                   Container(
// //                                     alignment: Alignment.centerRight,
// //                                     margin: EdgeInsets.only(top: 20, left: 154),
// //                                     child: Text(
// //                                       'View All(1)',
// //                                       style: TextStyle(
// //                                           color: Palette.button_color,
// //                                           fontWeight: FontWeight.bold),
// //                                     ),
// //                                   )
// //                                 ],
// //                               ),
// //                             if (byEmail)
// //                               Container(
// //                                 margin: EdgeInsets.only(top: 20,bottom: 10),
// //                                 alignment: Alignment.center,
// //                                 child: Image.asset('assets/images.jpg'),
// //                               ),

// //                                     ],
// //                                   ),
// //                                 ),
// //                               ))


//                             // Container(
//                             //   child: GestureDetector(
//                             //     child: Container(
//                             //       child: Stack(
//                             //         children: [
//                             //           Container(
//                             //             padding: EdgeInsets.only(top: 165, left: 20),
//                             //             child: Image.asset('assets/images/ic_seaction.png',scale: 3,),
//                             //           ),
//                             //           Container(
//                             //             padding: EdgeInsets.only(top: 170, left: 65),
//                             //             child: Text("Floor \n 00",style: TextStyle(color: Palette.button_color,fontSize: 12),),
//                             //           ),
                                      
//                             //         ],
//                             //       ),
//                             //     ),
//                             //   ),
//                             // ), 
//                             // Container(
//                             //   child: GestureDetector(
//                             //     child: Container(
//                             //       child: Stack(
//                             //         children: [
//                             //           Container(
//                             //             padding: EdgeInsets.only(top: 165, left: 100),
//                             //             child: Image.asset('assets/images/ic_seaction.png',scale: 3,),
//                             //           ),
//                             //           Container(
//                             //             padding: EdgeInsets.only(top: 170, left: 140),
//                             //             child: Text("Selection \n 00",style: TextStyle(color: Palette.button_color,fontSize: 12),),
//                             //           ),
                                      
//                             //         ],
//                             //       ),
//                             //     ),
//                             //   ),
//                             // ),
//                             //  Container(
//                             //   child: GestureDetector(
//                             //     child: Container(
//                             //       child: Stack(
//                             //         children: [
//                             //           Container(
//                             //             padding: EdgeInsets.only(top: 165, left: 190),
//                             //             child: Image.asset('assets/images/ic_row.png',scale: 3,),
//                             //           ),
//                             //           Container(
//                             //             padding: EdgeInsets.only(top: 170, left: 235),
//                             //             child: Text("Row \n 00",style: TextStyle(color: Palette.button_color,fontSize: 12),),
//                             //           ),
                                      
//                             //         ],
//                             //       ),
//                             //     ),
//                             //   ),
//                             // ),
//                             //  Container(
//                             //   child: GestureDetector(
//                             //     child: Container(
//                             //       child: Stack(
//                             //         children: [
//                             //           Container(
//                             //             padding: EdgeInsets.only(top: 165, left: 270),
//                             //             child: Image.asset('assets/images/ic_seat.png',scale: 3,),
//                             //           ),
//                             //           Container(
//                             //             padding: EdgeInsets.only(top: 170, left: 315),
//                             //             child: Text("Seat \n 00",style: TextStyle(color: Palette.button_color,fontSize: 12),),
//                             //           ),
                                      
//                             //         ],
//                             //       ),
//                             //     ),
//                             //   ),
//                             // ),












// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:flutter/material.dart';
// // import 'package:inseat/palette.dart';


// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({Key? key}) : super(key: key);

// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }

// // class _HomeScreenState extends State<HomeScreen> {
// //   final GlobalKey<ScaffoldState> _key = GlobalKey();
// //   List imgList = [
// //     'assets/ic_invite_friend.png',
// //     'assets/ic_invite_friend.png',
// //     'assets/ic_invite_friend.png',
// //   ];
// //   bool byfooddrink = true;
// //     int page = 0;


// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       key: _key,
// //       drawer: Drawer(
// //         child: ListView(
// //           padding: EdgeInsets.zero,
// //           children: [
// //             DrawerHeader(
// //               decoration: BoxDecoration(
// //                   image: DecorationImage(
// //                 image: AssetImage("assets/ic_user.png"),
// //               )),
// //               padding: EdgeInsets.only(top: 90),
// //               child: Center(
// //                   child: Text(
// //                 'Guest',
// //                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
// //               )),
// //             ),
// //             ListTile(
// //               onTap: () {},
// //               leading: Image.asset(
// //                 'assets/ic_terms_condition.png',
// //                 height: 30,
// //                 width: 30,
// //               ),
// //               title: Text('Select Branch'),
// //             ),
// //             ListTile(
// //               onTap: () {},
// //               leading: Image.asset(
// //                 'assets/ic_terms_condition.png',
// //                 height: 30,
// //                 width: 30,
// //               ),
// //               title: Text('Select Branch'),
// //             ),
// //             ListTile(
// //               onTap: () {},
// //               leading: Image.asset(
// //                 'assets/ic_terms_condition.png',
// //                 height: 30,
// //                 width: 30,
// //               ),
// //               title: Text('Select Branch'),
// //             ),
// //             ListTile(
// //               onTap: () {},
// //               leading: Image.asset(
// //                 'assets/ic_terms_condition.png',
// //                 height: 30,
// //                 width: 30,
// //               ),
// //               title: Text('Select Branch'),
// //             ),
// //             ListTile(
// //               onTap: () {},
// //               leading: Image.asset(
// //                 'assets/ic_terms_condition.png',
// //                 height: 30,
// //                 width: 30,
// //               ),
// //               title: Text('Select Branch'),
// //             ),
// //             GestureDetector(
// //                   child: Container(
// //                       padding: EdgeInsets.only(left: 130),
// //                       height: 50,
// //                       color: Palette.button_color,
// //                       child: Row(
// //                         children: [
// //                           Align(
// //                               alignment: Alignment.center,
// //                               child: Image.asset(
// //                                 'assets/ic_logout.png',
// //                                 height: 30,
// //                                 width: 30,
// //                               )),
// //                           Container(
// //                             margin: EdgeInsets.only(left: 10),
// //                             child: Align(
// //                                 alignment: Alignment.center,
// //                                 child: Text(
// //                                   'Log Out',
// //                                   style: TextStyle(
// //                                       color: Palette.white, fontSize: 17),
// //                                 )),
// //                           ),
// //                         ],
// //                       )),
// //                   onTap: () {
// //                     // Navigator.push(
// //                     //   context,
// //                     //   MaterialPageRoute(builder: (context) => LoginScreen()),
// //                     // );
// //                   },
// //                 ),
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: new Container(
// //         color: Colors.black,
// //         height: 50,
// //         child: BottomAppBar(
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// //             children: [
// //               new Image.asset('assets/ic_uncheck_home.png'),
// //               new IconButton(onPressed: null, icon: Icon(Icons.search),iconSize: 20,),
// //               new IconButton(onPressed: null, icon: Icon(Icons.add_box)),
// //               new IconButton(
// //                   onPressed: () {
// //                     //    Navigator.push(
// //                     //   context,
// //                     //   MaterialPageRoute(builder: (context) =>MyFollowingDetail()
// //                     //   ),
// //                     // );
// //                   },
// //                   icon: Icon(Icons.favorite)),
// //               new IconButton(
// //                   onPressed: () {
// //                     //    Navigator.push(
// //                     //   context,
// //                     //   MaterialPageRoute(builder: (context) => Myprofile()),
// //                     // );
// //                   },
// //                   icon: Icon(Icons.account_box)),
// //             ],
// //           ),
// //         ),
// //       ),
      
     
// //          body:  SafeArea(
          
          
// //                     child: Expanded(
// //                         child: SingleChildScrollView(
// //                       child: Form(
// //                         child: Column(
// //                           children: [
// //                             Stack(
// //                               children: [
// //                                 Container(
// //                     alignment: Alignment.bottomCenter,
// //                     child: Image.asset("assets/ic_first_grid.png"),
// //                   ),
// //                   Container(
// //                     padding: EdgeInsets.only(top: 75, left: 25, right: 25),
// //                     child: TextField(
// //                       decoration: InputDecoration(
// //                         contentPadding: const EdgeInsets.all(10),
// //                         filled: true,
// //                         fillColor: Color.fromARGB(255, 229, 229, 244),
// //                         hintText: 'Find Your Location',
// //                         border: OutlineInputBorder(
// //                           borderSide: BorderSide.none,
// //                           borderRadius: BorderRadius.circular(50),
// //                         ),
// //                         prefixIcon: Padding(
// //                           padding: const EdgeInsets.all(10.0),
// //                           child: Image.asset(
// //                             'assets/ic_search.png',
// //                             width: 0,
// //                             height: 0,
// //                             fit: BoxFit.fill,
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                   Row(
// //                     children: [
// //                       Padding(
// //                           padding:
// //                               EdgeInsets.only(top: 5, left: 12)),
// //                       Image.asset(
// //                         'assets/ic_seaction.png',
// //                         height: 40,
// //                         width: 40,
// //                       ),
// //                       SizedBox(
// //                         width: 7,
// //                       ),
// //                       Column(
// //                         children: [
// //                           Center(child: Text('Floor')),
// //                           Text('00')
// //                         ],
// //                       ),
// //                       Padding(
// //                           padding:
// //                               EdgeInsets.only(top: 370, left: 12)),
// //                       Image.asset(
// //                         'assets/ic_seaction.png',
// //                         height: 40,
// //                         width: 40,
// //                       ),
// //                       SizedBox(
// //                         width: 0,
// //                       ),
// //                       Column(
// //                         children: [
// //                           Center(child: Text('Section')),
// //                           Text('00')
// //                         ],
// //                       ),
// //                       Padding(
// //                           padding:
// //                               EdgeInsets.only(top: 370, left: 12)),
// //                       Image.asset(
// //                         'assets/ic_seaction.png',
// //                         height: 40,
// //                         width: 40,
// //                       ),
// //                       SizedBox(
// //                         width: 0,
// //                       ),
// //                       Column(
// //                         children: [
// //                           Center(child: Text('Row')),
// //                           Text('00')
// //                         ],
// //                       ),
// //                       Padding(
// //                           padding:
// //                               EdgeInsets.only(top: 370, left: 12)),
// //                       Image.asset(
// //                         'assets/ic_seaction.png',
// //                         height: 40,
// //                         width: 40,
// //                       ),
// //                       SizedBox(
// //                         width: 0,
// //                       ),
// //                       Column(
// //                         children: [
// //                           Center(child: Text('Seat')),
// //                           Text('00')
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                   Container(
// //                               margin: EdgeInsets.only(top: 220),
// //                                child: CarouselSlider.builder(
// //                                         itemCount: imgList.length,
// //                                         options: CarouselOptions(
// //                                           reverse: false,
// //                                             height: 180,
// //                                             scrollDirection: Axis.horizontal,
// //                                             autoPlay: true,
// //                                             pauseAutoPlayOnTouch: true,
// //                                             onPageChanged: (index, reason) {
// //                                               setState(() {
// //                                                 page = index;
// //                                               });
// //                                             }),
// //                                         itemBuilder: (context, index, realIndex) {
// //                                           return Container(width: 250,
// //                                             child: Image.asset(imgList[index],
// //                                                 fit: BoxFit.cover,),
// //                                           );
// //                                         },
// //                                       ),
// //                              ),
                             
// //                                     Container(
// //                                       margin: EdgeInsets.only(top: 400),
// //                                       child: Row(
// //                                         mainAxisAlignment: MainAxisAlignment.center,
// //                                         children: imgList.map((url) {
// //                                           int index = imgList.indexOf(url);
// //                                           return Padding(
// //                                             padding: const EdgeInsets.symmetric(
// //                                                 horizontal: 3),
// //                                             child: Container(
// //                                              // padding: EdgeInsets.only(top: 10),
// //                                               width: 12,
// //                                               height: 12,
// //                                               margin: EdgeInsets.symmetric(
// //                                                   vertical: 20.0, horizontal: 2.0),
// //                                               decoration: BoxDecoration(
// //                                                 shape: BoxShape.circle,
// //                                                 border:Border.all(color: Palette.button_color),
// //                                                 color: page == index
// //                                                     ?Colors.white
// //                                                     :  Palette.button_color
// //                                               ),
// //                                             ),
// //                                           );
// //                                         }).toList(),
// //                                       ),
// //                                     ),
// //                               ],
// //                             ),
                  
                            
                             
// //                             Container(
// //                               padding: EdgeInsets.only(top: 0, right: 20, left: 20),
// //                               child: Row(
// //                                 children: [
// //                                   Expanded(
// //                                     child: GestureDetector(
// //                                       onTap: () {
// //                                         setState(() {
// //                                           byfooddrink = true;
// //                                         });
// //                                       },
// //                                       child: Stack(
// //                                         children: [
// //                                           Container(
// //                                             height: 40,
// //                                             alignment: Alignment.center,
// //                                             padding: EdgeInsets.symmetric(
// //                                                 horizontal: 10, vertical: 8),
// //                                             decoration: BoxDecoration(
// //                                                 color: byfooddrink
// //                                                     ? Palette.button_color
// //                                                     : Palette.white,
// //                                                 borderRadius: BorderRadius.only(
// //                                                     topLeft: Radius.circular(50),
// //                                                     bottomLeft:
// //                                                         Radius.circular(50))),
// //                                             child: Text("FOOD & DRINK"),
// //                                           ),
// //                                           CircleAvatar(
// //                                             child: Image.asset(
// //                                               'assets/ic_food.png',
// //                                               height: 30,
// //                                               width: 30,
// //                                             ),
// //                                           )
// //                                         ],
// //                                       ),
// //                                     ),
// //                                   ),
// //                                   Expanded(
// //                                     child: GestureDetector(
// //                                       onTap: () {
// //                                         setState(() {
// //                                           byfooddrink = false;
// //                                         });
// //                                       },
// //                                       child: Stack(
// //                                         children: [
// //                                           Container(
// //                                             height: 40,
// //                                             alignment: Alignment.center,
// //                                             padding: EdgeInsets.symmetric(
// //                                                 horizontal: 10, vertical: 8),
// //                                             decoration: BoxDecoration(
// //                                                 color: byfooddrink
// //                                                     ? Palette.white
// //                                                     : Palette.button_color,
// //                                                 borderRadius: BorderRadius.only(
// //                                                     topRight: Radius.circular(50),
// //                                                     bottomRight:
// //                                                         Radius.circular(50))),
// //                                             child: Text("APPAREL"),
// //                                           ),
// //                                           CircleAvatar(
// //                                             child: Image.asset(
// //                                               'assets/ic_apparel.png',
// //                                               height: 30,
// //                                               width: 30,
// //                                             ),
// //                                           )
// //                                         ],
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                             if (byfooddrink)
// //                               Row(
// //                                 children: [
// //                                   Container(
// //                                     alignment: Alignment.centerLeft,
// //                                     margin: EdgeInsets.only(top: 20, left: 20),
// //                                     child: Text(
// //                                       'RESTAURANTS',
// //                                       style: TextStyle(
// //                                           color: Palette.button_color,
// //                                           fontWeight: FontWeight.bold),
// //                                     ),
// //                                   ),
// //                                   GestureDetector(
// //                                      onTap: () {
// //                                     // Navigator.push(
// //                                     //   context,
// //                                     //   MaterialPageRoute(
// //                                     //       builder: (context) =>
// //                                     //           const FoodDrink()),
// //                                     // );
// //                                   },
// //                                     child: Container(
// //                                       alignment: Alignment.centerRight,
// //                                       margin: EdgeInsets.only(top: 20, left: 154),
// //                                       child: Text(
// //                                         'View All(1)',
// //                                         style: TextStyle(
// //                                             color: Palette.button_color,
// //                                             fontWeight: FontWeight.bold),
// //                                       ),
// //                                     ),
// //                                   )
// //                                 ],
// //                               ),
// //                             if (byfooddrink)
// //                               Stack(
// //                                 children: [
// //                                   GestureDetector(
// //                                     onTap: () {
// //                                     // Navigator.push(
// //                                     //   context,
// //                                     //   MaterialPageRoute(
// //                                     //       builder: (context) =>
// //                                     //           const RestaurantDetails()),
// //                                     // );
// //                                   },
// //                                     child: Container(
                                                                  
// //                                                                   margin: EdgeInsets.only(top: 20,bottom: 10),
// //                                                                   alignment: Alignment.center,
// //                                                                   child: Image.asset('assets/restaurant.jpeg'),
// //                                                                 ),
// //                                   ),
// //                               Container(
// //                                 height: 40, margin: EdgeInsets.only(top: 165,bottom: 10,left: 42,right: 42),
// //                                 alignment: Alignment.center,
// //                                 decoration: BoxDecoration(
// //                 color: Colors.black54,
// //                   borderRadius: BorderRadius.only(
// //                       // bottomLeft: Radius.circular(10),
// //                       // bottomRight: Radius.circular(10)
// //                       )
// //                       ),
// //                       child: Text('Saints Concession',style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 15,
// //                     fontWeight: FontWeight.bold),),
// //                               )
// //                                 ],
// //                               )
// //                           ],
// //                         ),
// //                       ),
// //                     )),
// //                   )
// //     );
// //   }
// // }









// import 'dart:ffi';

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:inseat/login_page.dart';
// import 'package:inseat/palette.dart';
// import 'package:inseat/ui/login/login.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List imgList = [
//     "assets/images/ic_invite_friend.png",
//     "assets/images/ic_home.png",
//   ];
//   int page = 0;
//   bool byEmail = true;
//   late TextEditingController mobileCtr;
//   late TextEditingController emailCtr;
//   late TextEditingController password;
//   late TextEditingController passwordMobile;

//   @override
//   void initState() {
//     mobileCtr = TextEditingController();
//     emailCtr = TextEditingController();
//     password = TextEditingController();
//     passwordMobile = TextEditingController();

//     super.initState();
//   }

//   GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldkey,
//       // appBar: AppBar(title:Text('home screen'),backgroundColor: Colors.transparent,) ,
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             Container(
//               height: 350,
//               child: DrawerHeader(
//                 child: Stack(
//                   children: [
//                     Container(
//                       child: Container(
//                           height: 270,
//                           width: 270,
//                           padding: EdgeInsets.only(left: 30, right: 30),
//                           child: CircleAvatar(
//                             backgroundImage:
//                                 AssetImage('assets/images/ic_demo_image.png'),
//                             backgroundColor: Colors.white,
//                           )),
//                     ),
//                     Container(
//                         padding: EdgeInsets.only(left: 170, top: 170),
//                         child: IconButton(
//                           onPressed: () =>
//                               _scaffoldkey.currentState?.openDrawer(),
//                           icon: Image.asset(
//                               'assets/images/ic_edit_profile_pin.png'),
//                           iconSize: 50,
//                         )),
//                     Padding(
//                       padding: EdgeInsets.only(top: 250, left: 115),
//                       child: Text('Guest'),
//                     ),
//                     Stack(
//                       children: [
//                         Container(
//                           padding: EdgeInsets.only(top: 300, left: 110),
//                           child: Image.asset(
//                             'assets/images/ic_black_coin_stack.png',
//                             width: 20,
//                             height: 20,
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.only(top: 300, left: 140),
//                           child: Text('0'),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: Image.asset(
//                 'assets/images/ic_lock.png',
//                 height: 30,
//                 width: 30,
//               ),
//               title: Text('Change Password'),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: Image.asset(
//                 'assets/images/ic_my_cart.png',
//                 height: 30,
//                 width: 30,
//               ),
//               title: Text('My Cart'),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: Image.asset(
//                 'assets/images/ic_order_history.png',
//                 height: 30,
//                 width: 30,
//               ),
//               title: Text('My Orders'),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: Image.asset(
//                 'assets/images/ic_invite_friends.png',
//                 height: 30,
//                 width: 30,
//               ),
//               title: Text('Invite Friends And Earn'),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: Image.asset(
//                 'assets/images/ic_address_menu.png',
//                 height: 30,
//                 width: 30,
//               ),
//               title: Text('Vanue Selection'),
//             ),
//             Container(
//               padding: EdgeInsets.only(left: 0, right: 0, top: 50),
//               width: 100,
//               // height: 50,
//               child: MaterialButton(
//                   child: Text(
//                     'Log Out',
//                     style: TextStyle(color: Palette.white),
//                   ),
//                   color: Palette.button_color,
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => LoginScreen()),
//                     );
//                   }),
//             )
//           ],
//         ),
//       ),
//       body: SafeArea(
//           child: Column(
//         children: [
//           Container(
//             child: Stack(
//               children: [
//                 Container(
//                   alignment: Alignment.bottomCenter,
//                   child: Image.asset("assets/images/ic_first_grid.png"),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(top: 80, left: 25, right: 25),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       contentPadding: const EdgeInsets.all(10),
//                       filled: true,
//                       fillColor: Color.fromARGB(255, 229, 229, 244),
//                       hintText: 'Find Your Location',
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide.none,
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       prefixIcon: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Image.asset(
//                           'assets/images/ic_search.png',
//                           width: 0,
//                           height: 0,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: Row(
//                     children: [
//                       Container(
//                         child: Expanded(
//                           child: Column(
//                             children: [
//                               Stack(
//                                 children: [
//                                   Container(
//                                     child: Column(
//                                       children: [
//                                         Container(
//                                           child: IconButton(
//                                             padding: EdgeInsets.only(
//                                                 top: 0, left: 0),
//                                             onPressed: () => _scaffoldkey
//                                                 .currentState
//                                                 ?.openDrawer(),
//                                             icon: Image.asset(
//                                                 'assets/images/ic_menu_scan.png'),
//                                             iconSize: 70,
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.only(top: 15, left: 70),
//                                     child: Image.asset(
//                                       'assets/images/ic_location.png',
//                                       scale: 4,
//                                     ),
//                                   ),
//                                   Container(
//                                     padding:
//                                         EdgeInsets.only(top: 18, left: 100),
//                                     child: Text(
//                                       "Grand Fuhr Arena",
//                                       style: TextStyle(
//                                           color: Palette.white, fontSize: 18),
//                                     ),
//                                   ),
//                                   Container(
//                                       padding:
//                                           EdgeInsets.only(top: 0, left: 260),
//                                       child: IconButton(
//                                         onPressed: () {
//                                           Fluttertoast.showToast(
//                                               msg: "Cart",
//                                               toastLength: Toast.LENGTH_SHORT,
//                                               gravity: ToastGravity.BOTTOM,
//                                               timeInSecForIosWeb: 1,
//                                               backgroundColor:
//                                                   Palette.button_color,
//                                               textColor: Colors.white,
//                                               fontSize: 16.0);
//                                         },
//                                         icon: Image.asset(
//                                           'assets/images/ic_shopping_cart.png',
//                                           scale: 4,
//                                         ),
//                                         // iconSize: 10,
//                                       )),
//                                   Container(
//                                       padding:
//                                           EdgeInsets.only(top: 0, left: 300),
//                                       child: IconButton(
//                                         onPressed: () {
//                                           Fluttertoast.showToast(
//                                               msg: "Notification",
//                                               toastLength: Toast.LENGTH_SHORT,
//                                               gravity: ToastGravity.BOTTOM,
//                                               timeInSecForIosWeb: 1,
//                                               backgroundColor:
//                                                   Palette.button_color,
//                                               textColor: Colors.white,
//                                               fontSize: 16.0);
//                                         },

//                                         icon: Image.asset(
//                                           'assets/images/ic_notification_home.png',
//                                           scale: 4,
//                                         ),
//                                         //iconSize: 10,
//                                       )),
//                                   Container(
//                                     padding: EdgeInsets.only(top: 168),
//                                     child: Row(
//                                       children: [
//                                         Container(
//                                           child: GestureDetector(
//                                             child: Container(
//                                               child: Stack(
//                                                 children: [
//                                                   Container(
//                                                     padding: EdgeInsets.only(
//                                                         left: 10),
//                                                     child: Image.asset(
//                                                       'assets/images/ic_seaction.png',
//                                                       scale: 3,
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     padding: EdgeInsets.only(
//                                                         left: 50),
//                                                     child: Text(
//                                                       "Floor \n 00",
//                                                       style: TextStyle(
//                                                           color: Palette
//                                                               .button_color,
//                                                           fontSize: 12),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           child: GestureDetector(
//                                             child: Container(
//                                               child: Stack(
//                                                 children: [
//                                                   Container(
//                                                     padding: EdgeInsets.only(
//                                                         left: 10),
//                                                     child: Image.asset(
//                                                       'assets/images/ic_seaction.png',
//                                                       scale: 3,
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     padding: EdgeInsets.only(
//                                                         left: 50),
//                                                     child: Text(
//                                                       "Selection \n 00",
//                                                       style: TextStyle(
//                                                           color: Palette
//                                                               .button_color,
//                                                           fontSize: 12),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           child: GestureDetector(
//                                             child: Container(
//                                               child: Stack(
//                                                 children: [
//                                                   Container(
//                                                     padding: EdgeInsets.only(
//                                                         left: 10),
//                                                     child: Image.asset(
//                                                       'assets/images/ic_row.png',
//                                                       scale: 3,
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     padding: EdgeInsets.only(
//                                                         left: 50),
//                                                     child: Text(
//                                                       "Row \n 00",
//                                                       style: TextStyle(
//                                                           color: Palette
//                                                               .button_color,
//                                                           fontSize: 12),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           child: GestureDetector(
//                                             child: Container(
//                                               child: Stack(
//                                                 children: [
//                                                   Container(
//                                                     padding: EdgeInsets.only(
//                                                         left: 10),
//                                                     child: Image.asset(
//                                                       'assets/images/ic_seat.png',
//                                                       scale: 3,
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     padding: EdgeInsets.only(
//                                                         left: 50),
//                                                     child: Text(
//                                                       "Seat \n 00",
//                                                       style: TextStyle(
//                                                           color: Palette
//                                                               .button_color,
//                                                           fontSize: 12),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(10),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     CarouselSlider.builder(
//                       itemCount: imgList.length,
//                       options: CarouselOptions(
//                           height: 100,
//                           scrollDirection: Axis.horizontal,
//                           autoPlay: true,
//                           onPageChanged: (index, reason) {
//                             setState(() {
//                               page = index;
//                             });
//                           }),
//                       itemBuilder: (context, index, realIndex) {
//                         return Container(
//                           child: Image.asset(imgList[index], fit: BoxFit.cover),
//                         );
//                       },
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: imgList.map((url) {
//                         int index = imgList.indexOf(url);
//                         return Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 3),
//                           child: Container(
//                             width: 13,
//                             height: 13,
//                             margin: EdgeInsets.symmetric(
//                                 vertical: 10.0, horizontal: 2.0),
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Palette.button_color),
//                                 shape: BoxShape.circle,
//                                 color: page == index
//                                     ? Palette.white
//                                     : Palette.button_color),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Container(padding: EdgeInsets.all(2),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding:
//                                 EdgeInsets.only(top: 15, right: 20, left: 20),
//                             child: Row(
//                               children: [
//                                 Expanded(
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       print(1);
//                                       // setState(() {
//                                       //   byEmail = true;
//                                       //   password.clear();
//                                       //   passwordMobile.clear();
//                                       //   mobileCtr.clear();
//                                       // });
//                                     },
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                           color: byEmail
//                                               ? Palette.button_color
//                                               : Palette.pholder_background,
//                                           borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(50),
//                                               bottomLeft: Radius.circular(50))),
//                                       alignment: Alignment.center,
//                                       padding: EdgeInsets.symmetric(
//                                           horizontal: 10, vertical: 12),
//                                       child: Text("Email"),
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                          print(2);
//                                         // byEmail = false;
//                                         // password.clear();
//                                         // passwordMobile.clear();
//                                         // emailCtr.clear();
//                                       });
//                                     },
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       padding: EdgeInsets.symmetric(
//                                           horizontal: 10, vertical: 12),
//                                       decoration: BoxDecoration(
//                                           color: byEmail
//                                               ? Palette.pholder_background
//                                               : Palette.button_color,
//                                           borderRadius: BorderRadius.only(
//                                               topRight: Radius.circular(50),
//                                               bottomRight:
//                                                   Radius.circular(50))),
//                                       child: Text("Phone"),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//       child: Column(
//         children: [
//           Container(
//                           padding:
//                               EdgeInsets.only(top: 15, right: 20, left: 20),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       byEmail = true;
//                                       password.clear();
//                                       passwordMobile.clear();
//                                       mobileCtr.clear();
//                                     });
//                                   },
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         color: byEmail
//                                             ? Palette.button_color
//                                             : Palette.pholder_background,
//                                         borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(50),
//                                             bottomLeft: Radius.circular(50))),
//                                     alignment: Alignment.center,
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 10, vertical: 12),
//                                     child: Text("Email"),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       byEmail = false;
//                                       password.clear();
//                                       passwordMobile.clear();
//                                       emailCtr.clear();
//                                     });
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 10, vertical: 12),
//                                     decoration: BoxDecoration(
//                                         color: byEmail
//                                             ? Palette.pholder_background
//                                             : Palette.button_color,
//                                         borderRadius: BorderRadius.only(
//                                             topRight: Radius.circular(50),
//                                             bottomRight: Radius.circular(50))),
//                                     child: Text("Phone"),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//         ],
//       ),
//       ),
//     );
//   }
// }
