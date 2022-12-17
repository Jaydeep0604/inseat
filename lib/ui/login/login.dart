import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inseat/palette.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:inseat/ui/login/forgotpassword.dart';
import 'package:inseat/ui/login/guest.dart';
import 'package:inseat/ui/login/signup_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

const activecolor = Color.fromARGB(255, 163, 167, 170);
const inactivecolor = Color.fromARGB(255, 0, 81, 168);

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  CountryCode? code = CountryCode(
    code: "IND",
    dialCode: "+91",
  );
  var isAllSamel;
  bool byEmail = true;
  late TextEditingController mobileCtr;
  late TextEditingController emailCtr;
  late TextEditingController password;
  late TextEditingController passwordMobile;

  var _pass;

var value1;

  @override
  void initState() {
    mobileCtr = TextEditingController();
    emailCtr = TextEditingController();
    password = TextEditingController();
    passwordMobile = TextEditingController();

    super.initState();
  }

//for validation
  bool validate = false;
//for password
  bool p_isObscure = true;
   //bool _obsecureText = true;
  //bool _obsecureTextMobile = true;
  void _toggleObscured() {
    setState(() {
      p_isObscure = !p_isObscure;
    });
  }

  bool checkbox = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String? value;
    return Scaffold(
      body: SafeArea(
          child: Expanded(
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
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 15, right: 20, left: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      byEmail = true;
                                      password.clear();
                                      passwordMobile.clear();
                                      mobileCtr.clear();
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: byEmail
                                            ? Palette.button_color
                                            : Palette.pholder_background,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            bottomLeft: Radius.circular(50))),
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 8),
                                    child: Text("Email"),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      byEmail = false;
                                      password.clear();
                                      passwordMobile.clear();
                                      emailCtr.clear();
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 8),
                                    decoration: BoxDecoration(
                                        color: byEmail
                                            ? Palette.pholder_background
                                            : Palette.button_color,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(50),
                                            bottomRight: Radius.circular(50))),
                                    child: Text("Phone"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (byEmail)
                          Container(
                            padding:
                                EdgeInsets.only(top: 20, right: 20, left: 20),
                            child: Column(
                              children: [
                                TextFormField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),

                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        'assets/images/ic_email.png',
                                        width: 0,
                                        height: 0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    //prefixIcon: Padding(padding: EdgeInsets.all(0.0),
                                    // child: Icon(Icons.email_outlined),),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    hintText: 'Enter the Email',

                                    // hintText: 'Enter E-Mail Address',
                                    //errorText: 'Please Enter Your E-Mail Address'
                                  ),
                                  controller: emailCtr,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(320),
                                    FilteringTextInputFormatter.deny(" "),
                                    FilteringTextInputFormatter.deny("[]"),
                                    FilteringTextInputFormatter.deny("["),
                                    FilteringTextInputFormatter.deny("]"),
                                    FilteringTextInputFormatter.deny("^"),
                                    FilteringTextInputFormatter.deny(""),
                                    FilteringTextInputFormatter.deny("`"),
                                    FilteringTextInputFormatter.deny("/"),
                                    FilteringTextInputFormatter.deny("\\"),
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9a-zA-z._@]')),
                                    FilteringTextInputFormatter.deny(
                                        RegExp(r"/"))
                                  ],
                                  validator: (value) => validateEmail(value),
                                  // validator: (value) {
                                  //   if (value?.trim().isEmpty ?? true) {
                                  //     return "Please Enter Email Address";
                                  //   } else if (!RegExp(
                                  //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  //       .hasMatch(value ?? "")) {
                                  //     return "Enter Valid Email Address";
                                  //   }
                                  //   return null;
                                  // },
                                )
                              ],
                            ),
                          ),
                        if (!byEmail)
                          Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: IntlPhoneField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'assets/images/ic_call.png',
                                    width: 0,
                                    height: 0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // icon: const Icon(Icons.phone),
                                hintText: 'Phone Number',
                                // errorText: validate
                                //     ? 'Please Enter The Number'
                                //     : null,
                              ),
                              disableLengthCheck: true,
                              initialCountryCode: 'IN',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                              showCountryFlag: false,

                              // validator: (value) {
                              //   value1 = value.toString();
                              // },
                            
                              //   validator: (value) =>
                              // validatephone(value),
                            ),
                          ),
                        if (byEmail)
                          Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(6)
                                ],
                                obscureText: p_isObscure,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  contentPadding: const EdgeInsets.all(10),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      'assets/images/ic_lock.png',
                                      width: 0,
                                      height: 0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  errorText: validate
                                      ? 'Please Enter Your Password'
                                      : null,
                                  //labelText: 'Enter Password',
                                  hintText: 'Enter Your Password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleObscured,
                                    child: Transform.scale(
                                      scale: 0.5,
                                      child: ImageIcon(
                                        p_isObscure
                                            ? AssetImage(
                                                "assets/images/ic_hide.png",
                                              )
                                            : AssetImage(
                                                "assets/images/ic_show.png",
                                              ),
                                        size: 12,
                                        color: Palette.button_color,
                                      ),
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                //maxLength: 6,
                                controller: _pass,
                                validator: (val) {
                                  if (val!.isEmpty)
                                    return 'Please Your Password';
                                  return null;
                                }),
                          ),
                        if (!byEmail)
                          Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(6)
                                ],
                                obscureText: p_isObscure,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),

                                  contentPadding: const EdgeInsets.all(10),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      'assets/images/ic_lock.png',
                                      width: 0,
                                      height: 0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  errorText: validate
                                      ? 'Please Enter Your Password'
                                      : null,
                                  //labelText: 'Enter Password',
                                  hintText: 'Enter Your Password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleObscured,
                                    child: Transform.scale(
                                      scale: 0.5,
                                      child: ImageIcon(
                                        p_isObscure
                                            ? AssetImage(
                                                "assets/images/ic_show.png",
                                              )
                                            : AssetImage(
                                                "assets/images/ic_hide.png",
                                              ),
                                        size: 12,
                                        color: Palette.button_color,
                                      ),
                                    ),
                                  ),
                                ),
                                //maxLength: 6,
                                controller: _pass,
                                validator: (val) {
                                  if (val!.isEmpty)
                                    return 'Please Your Password';
                                  return null;
                                }),
                          ),
                        Container(
                          padding: EdgeInsets.only(left: 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: checkbox,
                                        onChanged: (value) {
                                          setState(() {
                                            checkbox = value!;
                                          });
                                          Border.all(
                                              color: Palette.button_color);
                                        },
                                        side: BorderSide(
                                            color: Palette.button_color),
                                      ),
                                      Text('Remember Me'),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: (() {
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ForgotPassword()),
                                          );
                                  }),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 40),
                                    //alignment: Alignment.topRight,
                                    child: Text('Forgot Password?',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                //fontFamily: KSMFontFamily.robotoRgular,
                                                color: Color.fromARGB(255, 0, 0, 0))),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: SizedBox(
                            width: 320,
                            height: 40,
                            child: MaterialButton(
                              color: Palette.button_color,
                              textColor: Palette.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              onPressed: () {
                                setState(() {
                                  if (_formKey.currentState!.validate()) {
                                    Fluttertoast.showToast(
                                        msg: "Record Submited",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.SNACKBAR,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor:
                                            Color.fromARGB(255, 58, 54, 54),
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  } else {
                                    //  Fluttertoast.showToast(
                                    // msg: "Record Not Submited",
                                    // toastLength: Toast.LENGTH_SHORT,
                                    // gravity: ToastGravity.BOTTOM,
                                    // timeInSecForIosWeb: 1,
                                    // backgroundColor:
                                    //     Color.fromARGB(255, 58, 54, 54),
                                    // textColor: Colors.white,
                                    // fontSize: 16.0);
                                  }
                                });
                              },
                              child: Text('Login'),
                            ),
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(top: 25, right: 20, left: 20),
                        //   alignment: Alignment.topRight,
                        //   child: Container(
                        //     padding: const EdgeInsets.all(10.0),
                        //     alignment: Alignment.topCenter,
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(50),
                        //         color: Palette.button_color
                        //         // border: Border.all(color:Pelette.signborder)
                        //         ),
                        //     height: 40,
                        //     child: Text(
                        //       'Login',
                        //       style: TextStyle(color: Palette.white),
                        //     ),
                        //   ),
                        // ),

                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: SizedBox(
                            width: 320,
                            height: 40,
                            child: MaterialButton(
                              color: Colors.white,
                              textColor: Palette.button_color,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side:
                                      BorderSide(color: Palette.button_color)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Signup_Screen()),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(color: Palette.button_color),
                              ),
                            ),
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                        //   alignment: Alignment.topRight,
                        //   child: Container(
                        //     padding: const EdgeInsets.all(10.0),
                        //     alignment: Alignment.topCenter,
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(50),
                        //         color: Palette.signupbtn,
                        //         border: Border.all(color: Palette.button_color)),
                        //     height: 40,
                        //     child: Text(
                        //       'Sign up',
                        //       style: TextStyle(color: Palette.button_color),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(right: 20, top: 20),
                                    child: Image.asset(
                                      'assets/images/ic_facebook.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 50, top: 20),
                                    child: Image.asset(
                                      'assets/images/ic_google.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: (() {}),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 35, top: 10),
                                          //alignment: Alignment.topRight,
                                          child: Text(
                                              "Don't have an account?",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      //fontFamily: KSMFontFamily.robotoRgular,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0))),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: (() {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Guest()),
                                          );
                                        }),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 190, top: 10),
                                          //alignment: Alignment.topRight,
                                          child: Text('continue as guest',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      //fontFamily: KSMFontFamily.robotoRgular,
                                                      color: Color.fromARGB(
                                                          245, 28, 4, 106))),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                   
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  String? validateEmail(String? email) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (email == null || email.isEmpty || !regex.hasMatch(email)) {
      Fluttertoast.showToast(
          msg: "Enter a valid email address",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Color.fromARGB(255, 219, 0, 0),
          textColor: Colors.white,
          fontSize: 16.0);
      //return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  String? validatephone(int? value) {
    if (value == null || value.isNaN) {
      Fluttertoast.showToast(
          msg: "Enter a valid email address",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Color.fromARGB(255, 219, 0, 0),
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      return null;
    }
  }
}

 // margin: EdgeInsets.only(top: 10),
              // padding: EdgeInsets.only(top: 15, right: 40, left: 40),
              // child: Column(
              //   children: [
              //     Row(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Expanded(
              //           flex: 3,
              //           child: Container(
              //             height: 47,
              //             padding: EdgeInsets.only(top: 1),
              //             decoration: BoxDecoration(
              //                 color: Pelette.pholder_background,
              //                 borderRadius: BorderRadius.circular(10)),
              //             child: CountryCodePicker(
              //               padding: EdgeInsets.symmetric(
              //                   horizontal: 2, vertical: 0),
              //               barrierColor: Colors.black.withOpacity(0.2),
              //               onChanged: (CountryCode codeValue) {
              //                 setState(() {
              //                   code = codeValue;
              //                 });
              //               },
              //               searchDecoration: InputDecoration(
              //                 hintText: "Search Country Code",
              //                 hintStyle: Theme.of(context)
              //                     .textTheme
              //                     .bodyText1
              //                     ?.copyWith(
              //                         color:
              //                             Color.fromARGB(255, 161, 159, 159)),

                                       
              //               ),
              //               textStyle: Theme.of(context).textTheme.bodyText1,
              //               backgroundColor: Color.fromARGB(96, 0, 0, 0),
              //               initialSelection: 'IND',
              //               boxDecoration: BoxDecoration(
              //                   color: Theme.of(context).cardColor),
              //               favorite: ['+91', 'IND'],
              //               showCountryOnly: false,
              //               showDropDownButton: true,
              //               showFlag: false,
              //               dialogBackgroundColor: Pelette.pholder_background,
              //               showOnlyCountryWhenClosed: false,
              //               alignLeft: false,
              //             ),
              //           ),
              //         ),
              //         SizedBox(width: 5),
              //         Expanded(
              //           flex: 7,
              //           child: TextFormField(
              //             controller: mobileCtr,
              //             maxLength: 14,
              //             keyboardType: TextInputType.phone,
              //             // textInputType: TextInputType.phone,
              //             inputFormatters: [
              //               FilteringTextInputFormatter.deny(' '),
              //               FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              //               LengthLimitingTextInputFormatter(13),
              //             ],
              //             decoration: InputDecoration(
                           
              //              border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(50),
              //              ),
              //               hintText: "Enter Your Mobile Number",
              //             ),

              //             validator: (value) {
              //               if (value?.trimLeft().trimRight().isEmpty ?? true) {
              //                 return "Please Enter Mobile Number";
              //               } else if (!RegExp(r"^(?:[0-9] ?){9,14}[0-9]$")
              //                   .hasMatch(value ?? '')) {
              //                 return "Please Enter Valid Mobile Number";
              //               }
              //               // else if (isAllSame(value ?? "")) {
              //               //   return "Please Enter Valid Mobile Number";
              //               // } 
              //               else {
              //                 return null;
              //               }
              //             },
              //           ),
              //         ),
              //       ],
              //     )
              //   ],
              // )


              