import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({ Key? key }) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicy();
}

class _PrivacyPolicy extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("assets/images/ic_first_grid.png"),
                ),
                Container(
                child: Padding(padding: EdgeInsets.all(15),
                 child: Text('Privacy Policy',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                            //fontFamily: KSMFontFamily.robotoRgular,
                                            color: Color.fromARGB(255, 0, 0, 0))),
                ),
                ),
                Container(
                child: Padding(padding: EdgeInsets.only(right: 30,top: 10),
                 child: Text('do not share payment details with \n anyone',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontSize: 17,
                                         
                                            //fontFamily: KSMFontFamily.robotoRgular,
                                            color: Color.fromARGB(255, 0, 0, 0))),
                ),
                )
          ],
      )),
    );
  }
}