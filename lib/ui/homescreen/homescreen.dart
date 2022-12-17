import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inseat/palette.dart';
import 'package:inseat/ui/homescreen/fooddrink.dart';
import 'package:inseat/ui/homescreen/restaurantdetails.dart';
import 'package:inseat/ui/login/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool byFoodDrink = true;
  int page = 0;
  bool byHome = true;
  bool byQR = true;
  bool byProfile = true;
  List imgList = [
    "assets/images/ic_invite_friend.png",
    "assets/images/ic_home.png",
  ];
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 350,
              child: DrawerHeader(
                child: Stack(
                  children: [
                    Container(
                      child: Container(
                          height: 270,
                          width: 270,
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/ic_demo_image.png'),
                            backgroundColor: Colors.white,
                          )),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 170, top: 170),
                        child: IconButton(
                          onPressed: () =>
                              _scaffoldkey.currentState?.openDrawer(),
                          icon: Image.asset(
                              'assets/images/ic_edit_profile_pin.png'),
                          iconSize: 50,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 250, left: 115),
                      child: Text('Guest'),
                    ),
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 300, left: 110),
                          child: Image.asset(
                            'assets/images/ic_black_coin_stack.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 300, left: 140),
                          child: Text('0'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_lock.png',
                height: 30,
                width: 30,
              ),
              title: Text('Change Password'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_my_cart.png',
                height: 30,
                width: 30,
              ),
              title: Text('My Cart'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_order_history.png',
                height: 30,
                width: 30,
              ),
              title: Text('My Orders'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_invite_friends.png',
                height: 30,
                width: 30,
              ),
              title: Text('Invite Friends And Earn'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/ic_address_menu.png',
                height: 30,
                width: 30,
              ),
              title: Text('Vanue Selection'),
            ),
            Container(
              padding: EdgeInsets.only(left: 0, right: 0, top: 50),
              width: 100,
              // height: 50,
              child: MaterialButton(
                  child: Text(
                    'Log Out',
                    style: TextStyle(color: Palette.white),
                  ),
                  color: Palette.button_color,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: new Container(
        color: Colors.black,
        height: 30,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      byHome = true;
                      byQR = false;
                      byProfile = false;
                    });
                  },
                  child: new Image.asset(
                    'assets/images/ic_check_home.png',
                    height: 20,
                    width: 20,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      byHome = false;
                      byQR = true;
                      byProfile = false;
                    });
                  },
                  child: new Image.asset(
                    'assets/images/ic_scan_white_home.png',
                    height: 20,
                    width: 20,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      byHome = false;
                      byQR = false;
                      byProfile = true;
                    });
                  },
                  child: new Image.asset(
                    'assets/images/ic_user.png',
                    height: 20,
                    width: 20,
                  )),
            ],
          ),
        ),
      ),
      key: _scaffoldkey,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/images/ic_first_grid.png"),
                ),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: IconButton(
                                      padding: EdgeInsets.only(),
                                      onPressed: () => _scaffoldkey.currentState
                                          ?.openDrawer(),
                                      icon: Image.asset(
                                          'assets/images/ic_menu_scan.png'),
                                      iconSize: 60,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Image.asset(
                                'assets/images/ic_location.png',
                                scale: 4,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Grand Fuhr Arena",
                                style: TextStyle(
                                    color: Palette.white, fontSize: 18),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(),
                                child: IconButton(
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                        msg: "Cart",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Palette.button_color,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  },
                                  icon: Image.asset(
                                    'assets/images/ic_shopping_cart.png',
                                    scale: 4,
                                  ),
                                  // iconSize: 10,
                                )),
                            Container(
                                padding: EdgeInsets.only(),
                                child: IconButton(
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                        msg: "Notification",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Palette.button_color,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  },

                                  icon: Image.asset(
                                    'assets/images/ic_notification_home.png',
                                    scale: 4,
                                  ),
                                  //iconSize: 10,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (!byHome && byProfile && !byQR)
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 100),
                          //alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/ic_demo_image.png'),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.center,
                          child: Text(
                            "Guest",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 130,
                          padding: EdgeInsets.only(top: 20),
                          child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                    color: Palette.white, fontSize: 10),
                              ),
                              color: Palette.button_color,
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => HomeScreen()),
                                // );
                              }),
                        ),
                        Container(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, right: 160),
                          child: Text(
                            "Account information",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 20, right: 270),
                            child: Image.asset(
                              "assets/images/ic_call.png",
                              height: 25,
                              width: 25,
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 20, right: 270),
                            child: Image.asset(
                              "assets/images/ic_email.png",
                              height: 25,
                              width: 25,
                            )),
                        Container(
                          padding: EdgeInsets.only(top: 60),
                          child: Image.asset(
                            "assets/images/ic_invite_friend.png",
                            width: 330,
                          ),
                        )
                      ],
                    ),
                  ),
                if (byHome)
                  Container(
                    padding: EdgeInsets.only(top: 80, left: 25, right: 25),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        filled: true,
                        fillColor: Color.fromARGB(255, 229, 229, 244),
                        hintText: 'Find Your Location',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/ic_search.png',
                            width: 0,
                            height: 0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (byHome)
                  Container(
                    padding: EdgeInsets.only(top: 168),
                    child: Row(
                      children: [
                        Container(
                          child: GestureDetector(
                            child: Container(
                              child: Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Image.asset(
                                      'assets/images/ic_seaction.png',
                                      scale: 3,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Text(
                                      "Floor \n 00",
                                      style: TextStyle(
                                          color: Palette.button_color,
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              child: Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Image.asset(
                                      'assets/images/ic_seaction.png',
                                      scale: 3,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Text(
                                      "Selection \n 00",
                                      style: TextStyle(
                                          color: Palette.button_color,
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              child: Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Image.asset(
                                      'assets/images/ic_row.png',
                                      scale: 3,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Text(
                                      "Row \n 00",
                                      style: TextStyle(
                                          color: Palette.button_color,
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              child: Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Image.asset(
                                      'assets/images/ic_seat.png',
                                      scale: 3,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Text(
                                      "Seat \n 00",
                                      style: TextStyle(
                                          color: Palette.button_color,
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      if (byHome)
                        CarouselSlider.builder(
                          itemCount: imgList.length,
                          options: CarouselOptions(
                              height: 100,
                              scrollDirection: Axis.horizontal,
                              autoPlay: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  page = index;
                                });
                              }),
                          itemBuilder: (context, index, realIndex) {
                            return Container(
                              child: Image.asset(imgList[index],
                                  fit: BoxFit.cover),
                            );
                          },
                        ),
                      if (byHome)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imgList.map((url) {
                            int index = imgList.indexOf(url);
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: Container(
                                width: 13,
                                height: 13,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Palette.button_color),
                                    shape: BoxShape.circle,
                                    color: page == index
                                        ? Palette.regfeildback
                                        : Palette.button_color),
                              ),
                            );
                          }).toList(),
                        ),
                      SizedBox(
                        height: 40,
                      ),
                      if (byHome)
                        Container(
                          padding: EdgeInsets.only(top: 0, right: 20, left: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      byFoodDrink = true;
                                    });
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 8),
                                        decoration: BoxDecoration(
                                            color: byFoodDrink
                                                ? Palette.button_color
                                                : Palette.regfeildback,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(50),
                                                bottomLeft:
                                                    Radius.circular(50))),
                                        child: Text("FOOD & DRINK"),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Palette.white,
                                        child: Image.asset(
                                          'assets/images/ic_food.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      byFoodDrink = false;
                                    });
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 8),
                                        decoration: BoxDecoration(
                                            color: byFoodDrink
                                                ? Palette.white
                                                : Palette.button_color,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(50),
                                                bottomRight:
                                                    Radius.circular(50))),
                                        child: Text("APPAREL"),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Palette.button_color,
                                        child: Image.asset(
                                          'assets/images/ic_apparel.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (byQR) Container(),
                      //if(byHome)
                      if (byHome && byFoodDrink)
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                'RESTAURANTS',
                                style: TextStyle(
                                    color: Palette.button_color,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FoodandDrinkViewAll()),
                                );
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(top: 20, left: 154),
                                child: Text(
                                  'View All(1)',
                                  style: TextStyle(
                                      color: Palette.button_color,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      if (byHome)
                        if (byFoodDrink)
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RestaurantDetails()),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 20, bottom: 10),
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/images/1.jpeg',
                                    height: 180,
                                    width: 280,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                margin: EdgeInsets.only(
                                    top: 160, bottom: 10, left: 44, right: 44),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.only(
                                        // bottomLeft: Radius.circular(10),
                                        // bottomRight: Radius.circular(10)
                                        )),
                                child: Text(
                                  'Saints Concession',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
