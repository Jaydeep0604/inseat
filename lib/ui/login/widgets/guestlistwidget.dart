import 'package:flutter/material.dart';
import 'package:inseat/ui/login/models/guestlistdetalis.dart';

import '../models/guestlistdetalis.dart';

class GuestListWidget extends StatelessWidget {
  GuestListWidget({Key? key, required this.user}) : super(key: key);

  GuestListDetalisModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 400,
      // width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
                width: 250,
                height: 170,
                 decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(user.imagesUrl),
                                        fit: BoxFit.fill)),
        
            ),
          ),
           Padding(
                              padding: const EdgeInsets.only(top :120,left: 50),
                              child: Container(
                                height: 50,
                                width: 250,
                              
                                decoration: BoxDecoration(
                                    color: Colors.black54,borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight:Radius.circular(20))),
                                    
                                alignment: Alignment.center,
                                child: Text(
                                  "${user.description}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                             
         
        ],
      ),
    );
  }
}