import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inseat/palette.dart';
import 'package:inseat/ui/homescreen/category.dart';
import 'package:inseat/ui/homescreen/homescreen.dart';
import 'package:inseat/ui/login/models/menu1model.dart';
import 'package:inseat/ui/login/models/menu2model.dart';
import 'package:inseat/ui/login/widgets/menu1widget.dart';
import 'package:inseat/ui/login/widgets/menu2widget.dart';

class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails({Key? key}) : super(key: key);

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  List<Menu1Model> menu1list = [
    Menu1Model("1", "assets/images/chocolate.jpeg", "CHOCOLATE"),
    Menu1Model("2", "assets/images/misc.jpeg", "MISC"),
    Menu1Model("3", "assets/images/gum.jpeg", "GUM"),
    Menu1Model("4", "assets/images/hotdrinks.jpeg", "HOT DRINKS"),
    Menu1Model("5", "assets/images/colddrinks.jpeg", "COLD DRINKS"),
    Menu1Model("6", "assets/images/chips.jpeg", "CHIPS"),
    Menu1Model("7", "assets/images/nuts.jpeg", "NUTS"),
    Menu1Model("8", "assets/images/grill.jpeg", "GRILL"),
  ];
  List<Menu2Model> menu2list = [
  Menu2Model("assets/images/mars.jpeg", "Mars", "2.00"),
  Menu2Model("assets/images/reesepeanutbutter.jpeg", "Reese Peanut Butter Cup", "2.00"),
  Menu2Model("assets/images/auro.jpeg", "Aero", "2.00"),
  Menu2Model("assets/images/hershey's.jpeg", "Hershey's", "2.00"),
  Menu2Model("assets/images/mrbig.jpeg", "Mr big", "2.00"),
  Menu2Model("assets/images/ohhenry.jpeg", "Oh Henry", "2.00"),
  Menu2Model("assets/images/twizzlers.jpeg", "Twizzlers", "2.00"),
  Menu2Model("assets/images/caramilk.jpeg", "Caremilk", "2.00"),
  Menu2Model("assets/images/cofeecrisp.jpeg", "Coffee Crisp", "2.00"),
  Menu2Model("assets/images/skor.jpeg", "Skor", "2.00"),
  Menu2Model("assets/images/m&m.jpeg", "M&M", "2.00"),
  Menu2Model("assets/images/eatmore.jpeg", "Eat More", "2.00"),
  Menu2Model("assets/images/twix.jpeg", "Snickers", "2.00"),
  Menu2Model("assets/images/snickers.jpeg", "Smarties", "2.00"),
  Menu2Model("assets/images/kitkat.jpeg", "Kit Kat", "2.00"),
  Menu2Model("assets/images/kindersurprise.jpeg", "Kinder Serprise", "2.25"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
                Stack(children: [
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
                  Container(
                      padding: EdgeInsets.only(left: 280, top: 80),
                      child: IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             const HomeScreen()),
                          //   );
                        },
                        icon: Image.asset(
                          'assets/images/ic_filter.png',
                          height: 25,
                          width: 25,
                        ),
                        //iconSize: 20,
                      )),
                ]),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 0),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen()),
                                    );
                                  },
                                  icon: Image.asset(
                                      'assets/images/ic_back_arrow.png'),
                                  //iconSize: 30,
                                )),
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
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           const RestaurantDetails()),
                            //);
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
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Food & Drinks",
                              style: TextStyle(
                                  color: Palette.button_color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          GestureDetector(
                             onTap: () {
                                Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CategoryScreen()),
                                          );
                            },
                            child: Container(
                            padding: EdgeInsets.only(left: 170),
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  color: Palette.button_color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          )
                          
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 320,
                      child: ListView.separated(
                        // physics: AlwaysScrollableScrollPhysics(
                        // ),
                        scrollDirection: Axis.horizontal,
                        itemCount: menu1list.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //                         context,
                                //                         MaterialPageRoute(
                                //                             builder: (context) =>
                                //                                 MainCategoryScreen()),
                                //                       );
                              },
                              child: Menu1Widget(menu1: menu1list[index]));
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 2,
                            //   color: Palette.cursorcolor,
                            //  thickness: 5,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                     // height:,
                      width: 320,
                      child: ListView.separated(
                        shrinkWrap: true,
                        primary: false,
                        // physics: AlwaysScrollableScrollPhysics(
                        // ),
                        itemCount: menu2list.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //                         context,
                                //                         MaterialPageRoute(
                                //                             builder: (context) =>
                                //                                 MainCategoryScreen()),
                                //                       );
                              },
                              child: Menu2Widget(menu2: menu2list[index]));
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 2,
                            //   color: Palette.cursorcolor,
                            //  thickness: 5,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
