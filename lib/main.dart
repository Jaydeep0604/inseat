import 'dart:async';  
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inseat/palette.dart';
import 'package:inseat/ui/homescreen/homescreen.dart';
import 'package:inseat/ui/login/login.dart';

import 'login_page.dart';  
  
void main() {

   runApp(MyApp());}  
  
class MyApp extends StatelessWidget {  
  
  @override  
  Widget build(BuildContext context) {  
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:Palette.button_color,
    
 ));

    return MaterialApp( 

      home: MyHomePage(),
      debugShowCheckedModeBanner: false,  
    );  
  }  
}  
  
class MyHomePage extends StatefulWidget {  
  @override  
  SplashScreenState createState() => SplashScreenState(); 

}  
class SplashScreenState extends State<MyHomePage> {  
  @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 0),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => LoginScreen()  
                //(context) => HomeScreen()
            )  
         )  
    );  
  }  
  @override  
  Widget build(BuildContext context) {  
    return Container(
    
      height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/ic_background_splash.png"
        ),

           fit: BoxFit.cover,
          
           colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken)
           ),
      ),
      child: Scaffold(
      backgroundColor: Colors.transparent,
        // backgroundColor: Color.fromARGB(0, 241, 238, 238),  
        body: SafeArea(child: Column(
          
          children: [
            Stack(
              children: [
                
                   Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset("assets/images/outer.gif",height: 350,width: 350,),
                      ),
                    ),   
                   
                    
                     Padding(
                      padding: const EdgeInsets.only(top: 280),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset("assets/images/logoname.png",height: 200,width: 200,),
                      ),
                    ),
              ],
            )
          ],
        )),
  
      ),
    );  
  }  
}   
// class HomeScreen extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return Scaffold(  
//       body: SafeArea(  
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                         alignment: Alignment.bottomCenter,
//                         child: Image.asset("assets/images/bgnew.png"),
//                       ),
//                      Padding(
//                       padding: const EdgeInsets.only(top: 70),
//                       child: Container(
//                         alignment: Alignment.bottomCenter,
//                         child: Image.asset("assets/images/newlogo.png",height: 180,width: 180,),
//                       ),
//                     ),
                  
//               ],
              
//             ),
//               Container(
//                         alignment: Alignment.bottomCenter,
//                         child: Text('Login',style: TextStyle(fontSize: 18),)
//                       ),
//           ],
//         ),
//       ),  
//     );  
//   }  
// }  