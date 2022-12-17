import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/services.dart';


  const activecolor = Color.fromARGB(255, 163, 167, 170);
  const inactivecolor = Color.fromARGB(255, 0, 81, 168);

class login_page extends StatelessWidget {
  bool validate = false;
  Color tapemailcolor = inactivecolor;
  Color tepphonecolor = inactivecolor;
  void update(int changecolor) {
    if (changecolor == 1) {
      if (tapemailcolor == activecolor) {
        tapemailcolor == inactivecolor;
      } else {
        tepphonecolor == inactivecolor;
      }
    }
    if (changecolor == 2) {
      if (tepphonecolor == inactivecolor) {
        tapemailcolor == activecolor;
      } else {
        tepphonecolor == inactivecolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("assets/images/bgnew.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/images/newlogo.png",
                      height: 180,
                      width: 180,
                    ),
                  ),
                ),
              ],
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Form(
                  child: SafeArea(
                      child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            setState(() {
                              
                            });
                          },
                          child: AbsorbPointer(
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: 35,
                              width: 160,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Email',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
                              ),
                              margin: EdgeInsets.only(left: 120),
                              decoration: BoxDecoration(
                                color: activecolor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            setState(() {
                              update(2);
                            });
                          },
                          child: AbsorbPointer(
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: 35, width: 160,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Phone',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
                              ),
                              // padding: EdgeInsets.all(10),
                              // margin: EdgeInsets.only(left: 50),
                              decoration: BoxDecoration(
                                color: inactivecolor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
                    Stack(
                      children: [
                        // Container(
                        //               padding: EdgeInsets.all(15),
                        //               child: IntlPhoneField(
                        //               decoration: InputDecoration(
                        //                 icon: const Icon(Icons.phone),
                        //                 labelText: 'Phone Number',
                        //                 errorText:
                        //                     validate ? 'Please Enter The Number' : null,
                        //               ),
                        //               initialCountryCode: 'IN',
                        //               onChanged: (phone) {
                        //                 print(phone.completeNumber);
                        //               },
                        //             ),

                        //             ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: TextFormField(
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(50)
                              ],
                              decoration: InputDecoration(
                                icon: const Icon(Icons.email),
                                labelText: 'Enter E-Mail Address',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                errorText: validate
                                    ? 'Please Enter Your E-Mail Address'
                                    : null,
                              ),
                              // maxLength: 50,
                              validator: (value) => validateEmail(value),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))),
            )
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {
}
// @override 
// void setState(Null Function() param) {
  
// }

String? validateEmail(String? value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty || !regex.hasMatch(value)) {
    return 'Enter a valid email address';
  } else {
    return null;
  }
}

//  Container(
//                                   alignment: Alignment.bottomCenter,
//                                   height: 35, width: 160,
//                                 padding: EdgeInsets.all(10),
//                                   child: Text(
//                                     'Email',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(fontSize: 15),
//                                   ),

//                                   margin: EdgeInsets.only(left: 120),
//                                   decoration: BoxDecoration(

//                                     color: Color.fromARGB(255, 105, 132, 199),
//                                     borderRadius: BorderRadius.circular(50),
//                                   ),

//                                 ),

//                                 Container(
//                                   alignment: Alignment.bottomCenter,
//                                   height: 35, width: 160,
//                                   padding: EdgeInsets.all(10),
//                                   child: Text(
//                                     'Phone',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(fontSize: 15),
//                                   ),
//                                   // padding: EdgeInsets.all(10),
//                                   // margin: EdgeInsets.only(left: 50),
//                                   decoration: BoxDecoration(
//                                     color: Color.fromARGB(255, 140, 186, 95),
//                                     borderRadius: BorderRadius.circular(50),
//                                   ),
//                                 ),

//     TextEditingController email = TextEditingController();
//   TextEditingController mobile = TextEditingController();
//   TextEditingController password = TextEditingController();
//   TextEditingController _password = TextEditingController();
//   bool _isVisible = false;
//   bool _isVisibleicon = false;
//   bool changeColor = false;
//  bool valuefirst = false;
// void Shoew() {
//     setState(() {
//      //isVisible = !isVisible;
//     });
//   }
//   void color() {
//     //setState(() => changeColor = !changeColor);
//   }

// Row(
//   children: [
//     Column(
//       children: [

//   void setState(Null Function() param0) {}
// }

// import 'package:flutter/material.dart';
// import 'package:insheet/base/base.dart';
// import 'package:insheet/home/home.dart';
// import 'package:insheet/signup/signupscreen.dart';
// import 'package:insheet/uilts/appcolrs.dart';
// import 'package:flutter/services.dart';

// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
// TextEditingController email = TextEditingController();
// TextEditingController mobile = TextEditingController();
// TextEditingController password = TextEditingController();
// TextEditingController _password = TextEditingController();

// var _formKey = GlobalKey<FormState>();
// bool _isVisible = false;
// bool _isVisibleicon = false;
// bool changeColor = false;

// bool valuefirst = false;

// void updateStatus() {
//   setState(() {
//     isVisibleicon = !isVisibleicon;
//   });
// }

// void Shoew() {
//   setState(() {
//     isVisible = !isVisible;
//   });
// }

// void color() {
//   setState(() => changeColor = !changeColor);
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//           child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Stack(children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 80.0),
//                       child: Container(
//                         alignment: Alignment.bottomCenter,
//                         child: Image.asset(
//                           "assets/images/newlogo.png",
//                           height: 200,
//                           width: 200,
//                           //height: 100,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       child: Image.asset(
//                         "assets/images/bgnew.png",
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                     ),
//                   ]),
//                   Container(
//                     child: Text("Login"),
//                   ),
//                   Container(
//                       padding: EdgeInsets.all(15),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Stack(
//                               children: [
//                                 Container(
//                                   width: 180,
//                                   padding: EdgeInsets.only(right: 30),
//                                   child: RaisedButton(
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(40),
//                                       ),
//                                       //   color: changeColor ? Appcolors.textfieldcolor: Appcolors.btncolor,
//                                       child: Text(
//                                         'Email',
//                                         style: TextStyle(
//                                              color: changeColor ? Colors.white : Colors.black,fontSize: 16),
//                                       ),
//                                       onPressed: () => {
//                                             if (!_isVisible)
//                                               {
//                                                 color(),
//                                                 Shoew(),
//                                                 email.clear(),
//                                                 password.clear()
//                                               }
//                                             else
//                                               {_isVisible},
//                                           },
//                                       color: changeColor
//                                           ? Appcolors.btncolor
//                                           : Appcolors.phonecolor),
//                                 ),
//                                 Container(
//                                   width: 180,
//                                   margin: EdgeInsets.only(left: 80),
//                                   padding: EdgeInsets.only(left: 30),
//                                   child: RaisedButton(
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(40),
//                                       ),
//                                       child: Text(
//                                         'Phone  ',
//                                         style: TextStyle(
//                                            color: changeColor ? Colors.black : Colors.white,
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                       onPressed: () => {
//                                             if (_isVisible)
//                                               {Shoew(), color()}
//                                             else
//                                               {!_isVisible},
//                                             mobile.clear(),
//                                             password.clear()
//                                           },
//                                       color: changeColor
//                                           ? Appcolors.phonecolor
//                                           : Appcolors.btncolor),
//                                 ),
//                               ],
//                             ),
//                           ])),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                       padding: EdgeInsets.all(15),
//                       child: _isVisible
//                           ? TextFormField(
//                               inputFormatters: [
//                                 // only accept letters from a to z
//                                 // FilteringTextInputFormatter(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"), allow: true),
//                                 FilteringTextInputFormatter.deny(RegExp(r'[ ]'))
//                               ],
//                               controller: email,
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Appcolors.textfill,
//                                 hintText: "Email",
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide.none,
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 prefixIcon: Container(
//                                   margin: EdgeInsets.only(right: 8),
//                                   decoration: BoxDecoration(
//                                     border: Border(
//                                         right: BorderSide(
//                                             color: Color.fromARGB(
//                                       213,
//                                       20,
//                                       20,
//                                       20,
//                                     ))),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Image.asset(
//                                       'assets/images/ic_email.png',
//                                       width: 20,
//                                       height: 20,
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty ||
//                                     !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                                         .hasMatch(value)) {
//                                   return 'Plese Enter Email';
//                                 }
//                                 return null;
//                               },
//                             )
//                           : TextFormField(
//                               controller: mobile,
//                               inputFormatters: [
//                                 FilteringTextInputFormatter.allow(
//                                     RegExp(r'[0-9]')),
//                                 LengthLimitingTextInputFormatter(10)
//                               ],
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Appcolors.textfill,
//                                 hintText: "Phone Number ",
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide.none,
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 prefixIcon: Container(
//                                   margin: EdgeInsets.only(right: 8),
//                                   decoration: BoxDecoration(
//                                     border: Border(
//                                         right: BorderSide(
//                                             color: Color.fromARGB(
//                                       213,
//                                       20,
//                                       20,
//                                       20,
//                                     ))),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Image.asset(
//                                       'assets/images/ic_call.png',
//                                       width: 20,
//                                       height: 20,
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'please Enter mobaile no';
//                                 } else if (value.length < 10) {
//                                   return "week";
//                                 }
//                                 return null;
//                               })),
//                   Container(
//                     padding: EdgeInsets.all(15),
//                     child: _isVisible
//                         ? TextFormField(
//                           obscureText: !_isVisibleicon,
//                             controller: password,
//                             inputFormatters: [
//                               FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
//                               LengthLimitingTextInputFormatter(6)
//                             ],
//                             decoration: InputDecoration(

//                               filled: true,
//                               fillColor: Appcolors.textfill,
//                               hintText: "Password ",
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                               prefixIcon: Container(
//                                 margin: EdgeInsets.only(right: 8),
//                                 decoration: BoxDecoration(
//                                   border: Border(
//                                       right: BorderSide(
//                                           color: Color.fromARGB(
//                                     213,
//                                     20,
//                                     20,
//                                     20,
//                                   ))),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(15.0),
//                                   child: Image.asset(
//                                     'assets/images/ic_lock.png',
//                                     width: 20,
//                                     height: 20,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                               ),
//                               suffixIcon: Padding(
//                                   padding: const EdgeInsets.all(10.0),
//                                   child: IconButton(
//                                     icon: _isVisibleicon
//                                         ? Image.asset(
//                                             "assets/images/ic_show.png",

//                                             scale: 4,
//                                           )
//                                         : Image.asset(
//                                             "assets/images/ic_hide.png",

//                                             scale: 4),
//                                     onPressed: () {
//                                       updateStatus();
//                                     },
//                                   )

//                                   // Image.asset(
//                                   //   "assets/images/ic_hide.png",
//                                   //   scale: 4,
//                                   //   height: 5,
//                                   //   width: 5,
//                                   // ),
//                                   ),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Please Enter password ';
//                               } else if (value.length < 6) {
//                                 return "week";
//                               }
//                               return null;
//                             })
//                         : TextFormField(
//                           obscureText: !_isVisibleicon,
//                             inputFormatters: [
//                                 FilteringTextInputFormatter.deny(
//                                     RegExp(r'[ ]')),
//                                 LengthLimitingTextInputFormatter(6)
//                               ],
//                             controller: password,
//                             decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Appcolors.textfill,
//                               hintText: "Password",
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                               prefixIcon: Container(
//                                 margin: EdgeInsets.only(right: 8),
//                                 decoration: BoxDecoration(
//                                   border: Border(
//                                       right: BorderSide(
//                                           color: Color.fromARGB(
//                                     213,
//                                     20,
//                                     20,
//                                     20,
//                                   ))),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(15.0),
//                                   child: Image.asset(
//                                     'assets/images/ic_lock.png',
//                                     width: 20,
//                                     height: 20,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                               ),
//                               suffixIcon: Padding(
//                                   padding: const EdgeInsets.all(10.0),

//                                   child: IconButton(
//                                     icon: _isVisibleicon
//                                         ? Image.asset(
//                                             "assets/images/ic_show.png",

//                                             scale: 4,
//                                           )
//                                         : Image.asset(
//                                             "assets/images/ic_hide.png",

//                                             scale: 4),
//                                     onPressed: () {
//                                       updateStatus();
//                                     },
//                                   )
//                                   //Image.asset(
//                                   //   "assets/images/ic_hide.png",
//                                   //   height: 5,
//                                   //   width: 5,
//                                   // )
//                                   ),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Please Enter Password ';
//                               } else if (value.length < 6) {
//                                 return "week";
//                               }
//                               return null;
//                             }),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(left: 25),
//                     child: Row(children: [
//                       Checkbox(

//                         checkColor: Colors.amber,
//                         activeColor: Appcolors.btncolor,
//                         value: this.valuefirst,
//                         onChanged: (value) {
//                           setState(() {
//                             this.valuefirst = value!;
//                           });
//                         },
//                       ),
//                       SizedBox(

//                         width: 10,
//                       ),
//                       Text("Remember"),
//                       SizedBox(

//                         width: 110,
//                       ),
//                       Text("Forgot password?"),
//                     ]),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(
//                         top: 15, bottom: 15, left: 20, right: 20),
//                     child: SizedBox(

//                       height: 50,
//                       width: 370,
//                       child: RaisedButton(
//                         onPressed: () {
//                           if (_formKey.currentState!.validate()) {
//                             if (valuefirst == false)
//                               return print('plese requaried');
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Home()));
//                           } else {
//                             print("fail");
//                           }
//                         },
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                         color: Appcolors.btncolor,
//                         child: Text(
//                           "Login",
//                           style: TextStyle(fontSize: 18, color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(
//                         top: 15, bottom: 15, left: 20, right: 20),
//                     child: SizedBox(

//                       height: 50,
//                       width: 370,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Appcolors.btncolor),
//                             borderRadius: BorderRadius.circular(40)),
//                         child: RaisedButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Signup()));
//                           },
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(40),
//                           ),
//                           color: Colors.white,
//                           child: Text(
//                             "Signup",
//                             style: TextStyle(
//                                 fontSize: 18, color: Appcolors.btncolor),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(

//                     height: 15,
//                   ),
//                   SizedBox(

//                     height: 15,
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(left: 150),
//                     child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             "assets/images/ic_facebook.png",
//                             height: 50,
//                             width: 50,
//                           ),
//                           SizedBox(

//                             width: 10,
//                           ),
//                           Image.asset(
//                             "assets/images/ic_google.png",
//                             height: 50,
//                             width: 50,
//                           ),
//                         ]),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(left: 80),
//                     child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Dont have Account ?",
//                           ),
//                           TextButton(
//                               onPressed: () {
//                                  Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Home()));
//                               },
//                               child: Text(
//                                 "Continue as   guest",
//                                 style: TextStyle(
//                                     color: Appcolors.btncolor,
//                                     fontWeight: FontWeight.bold),
//                               )),
//                         ]),
//                   ),
//                 ],
//               ))),
//     );
//   }
// }

//  Container(
//   height: 30,
//       width: 180,
//       padding: EdgeInsets.only(right: 30),
//       child: RaisedButton(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50),
//           ),
//           //   color: changeColor ? Appcolors.textfieldcolor: Appcolors.btncolor,
//           child: Text(
//             'Email',
//             style: TextStyle(
//                  color: changeColor ? Color.fromARGB(0, 106, 96, 96) : Colors.transparent,fontSize: 16),
//           ),
//           onPressed: () => {
//                 if (!_isVisible)
//                   {
//                     color(),
//                     Shoew(),
//                     email.clear(),
//                     password.clear()
//                   }
//                 else
//                   {_isVisible},
//               },
//           color: changeColor
//               ? Colors.transparent
//               : Colors.transparent),
//     ),
//    Container(
//     height: 30,
//       width: 180,
//       margin: EdgeInsets.only(left: 80),
//       padding: EdgeInsets.only(left: 30),
//       child: RaisedButton(
//           shape: RoundedRectangleBorder(

//             borderRadius: BorderRadius.circular(50),
//           ),
//           child: Text(
//             'Phone  ',
//             style: TextStyle(
//                color: changeColor ? Colors.black : Colors.white,
//               fontSize: 16,
//             ),
//           ),
//           onPressed: () => {
//                 if (_isVisible)
//                   {Shoew(), color()}
//                 else
//                   {!_isVisible},
//                 mobile.clear(),
//                 password.clear()
//               },
//           color: changeColor
//               ? Colors.red
//               : Colors.blueAccent
//               ),
//     ),

// Positioned(
//     right: 60,
//     left: 60,
//     child: Container(
//       height: 30,
//       width: 0,
//       decoration: BoxDecoration(
//           color: Color.fromARGB(255, 7, 76, 181),
//           borderRadius: BorderRadius.circular(50)),
//     )),
