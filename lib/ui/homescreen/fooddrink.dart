import 'package:flutter/material.dart';
import 'package:inseat/code.dart';
import 'package:inseat/ui/homescreen/homescreen.dart';

class FoodandDrinkViewAll extends StatefulWidget {
  const FoodandDrinkViewAll({Key? key}) : super(key: key);

  @override
  State<FoodandDrinkViewAll> createState() => _FoodandDrinkState();
}

class _FoodandDrinkState extends State<FoodandDrinkViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
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
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    icon: Image.asset('assets/images/left-arrow.png'),
                    iconSize: 10,
                  )),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                child: Text("Food & Drink",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Container(
                  padding: EdgeInsets.only(left: 120),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/home.png'),
                    iconSize: 15,
                  )),
            ],
          )),
          Container(
            padding: EdgeInsets.only(top: 15, left: 25, right: 25),
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
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) =>
                  //           const RestaurantDetails()),
                  // );
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
                margin:
                    EdgeInsets.only(top: 160, bottom: 10, left: 44, right: 44),
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
      )),
    );
  }
}
