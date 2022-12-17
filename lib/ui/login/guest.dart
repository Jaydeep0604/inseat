import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inseat/palette.dart';
import 'package:inseat/ui/homescreen/homescreen.dart';
import 'package:inseat/ui/login/login.dart';
import 'package:inseat/ui/login/signup_page.dart';
import 'package:inseat/ui/login/widgets/guestlistwidget.dart';

import 'models/guestlistdetalis.dart';

class Guest extends StatefulWidget {
  const Guest({Key? key}) : super(key: key);

  @override
  State<Guest> createState() => _guestState();
}

class _guestState extends State<Guest> {
  @override
  List<GuestListDetalisModel> images = [
    GuestListDetalisModel('0',"assets/images/ic_invite_friend.png","Grant Fuhr Arena \n Edmonton, AB"
        ),
    GuestListDetalisModel(
        '1',"assets/images/ic_home.png","Sample Venue, Edmonton \n Edmonton, AB"),
    GuestListDetalisModel(
      '2',"assets/images/ic_invite_friend.png","Hello"
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset("assets/images/ic_first_grid.png"),
              ),
              Container(
                padding: EdgeInsets.only(top: 45, left: 110),
                child: Text(
                  "Vanue Selection",
                  style: TextStyle(
                      color: Palette.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 135,left: 25,right: 25),
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
              )
            ],
          ),
          Expanded(
              child: Container(
            
            child: ListView.separated(
              itemCount: 2,
              itemBuilder: (context,index) {
                
                return GestureDetector
                ( onTap: (){
                  
                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()),
                                          );
                  },
                  child: GuestListWidget(user: images[index]));
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          ))
        ],
      )),
    );
  }
}
