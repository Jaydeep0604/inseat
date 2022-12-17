import 'package:flutter/material.dart';

class TermsCondition extends StatefulWidget {
  const TermsCondition({ Key? key }) : super(key: key);

  @override
  State<TermsCondition> createState() => _TermsCondition();
}

class _TermsCondition extends State<TermsCondition> {
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
                 child: Text('Terms and Condition',
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
                child: Padding(padding: EdgeInsets.only(right: 50,top: 10),
                 child: Text('you have to pay service charge.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontSize: 15,
                                         
                                            //fontFamily: KSMFontFamily.robotoRgular,
                                            color: Color.fromARGB(255, 0, 0, 0))),
                ),
                )
          ],
      )),
    );
  }
}