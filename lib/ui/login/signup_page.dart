import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inseat/ui/login/login.dart';
import 'package:inseat/ui/login/privacypolicy.dart';
import 'package:inseat/ui/login/termsandcondition.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../../palette.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({Key? key}) : super(key: key);

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  bool validate = false;
  bool p_isObscure = true;
  bool pc_isObscure = false;

  bool checkbox = false;
  bool _obsecureText = true;
  bool _obsecureTextMobile = false;

  //var fristname, lastname,email;

  // get fristname => null;
  // get lastname => null;
  var fname, lname;

  void _toggleObscured() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }
  void _toggleObscured2() {
    setState(() {
      _obsecureTextMobile = !_obsecureTextMobile;
    });
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                  'Sign Up',
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
                      padding: EdgeInsets.all(1),
                      child: Column(
                        children: [
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
                                      filled: true,
                                      fillColor: Palette.regfeildback,
                                      contentPadding: const EdgeInsets.all(10),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Image.asset(
                                          'assets/images/ic_user.png',
                                          width: 0,
                                          height: 0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      disabledBorder: InputBorder.none,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      focusColor: Palette.regfeildback,
                                      hintText: 'Frist Name',
                                    ),
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    validator: (fristname) {
                                      fristname = fname;
                                      // if (fristname == null ||
                                      //     fristname.isEmpty) {
                                      //   Fluttertoast.showToast(
                                      //       msg: "Enter Frist Name",
                                      //       toastLength: Toast.LENGTH_SHORT,
                                      //       gravity: ToastGravity.SNACKBAR,
                                      //       timeInSecForIosWeb: 1,
                                      //       backgroundColor:
                                      //           Color.fromARGB(255, 219, 0, 0),
                                      //       textColor: Colors.white,
                                      //       fontSize: 16.0);
                                      //   //return 'Enter a valid email address';
                                      // }
                                    }
                                    // controller: emailCtr,
                                    )
                              ],
                            ),
                          ),
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
                                      filled: true,
                                      fillColor: Palette.regfeildback,
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Image.asset(
                                          'assets/images/ic_user.png',
                                          width: 0,
                                          height: 0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      hintText: 'Last Name',
                                    ),
                                    // controller: emailCtr,
                                    validator: (lastname) {
                                      lastname = lname;
                                      // if (lastname == null ||
                                      //     lastname.isEmpty) {
                                      //   Fluttertoast.showToast(
                                      //       msg: "Enter Last Name",
                                      //       toastLength: Toast.LENGTH_SHORT,
                                      //       gravity: ToastGravity.SNACKBAR,
                                      //       timeInSecForIosWeb: 1,
                                      //       backgroundColor:
                                      //           Color.fromARGB(255, 219, 0, 0),
                                      //       textColor: Colors.white,
                                      //       fontSize: 16.0);
                                      //   //return 'Enter a valid email address';
                                      // }
                                    })
                              ],
                            ),
                          ),
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
                                    filled: true,
                                    fillColor: Palette.regfeildback,
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

                                    hintText: 'Email Address',
                                    // hintText: 'Enter E-Mail Address',
                                    //errorText: 'Please Enter Your E-Mail Address'
                                  ),
                                  //controller: emailCtr,
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
                          Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: IntlPhoneField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Palette.regfeildback,
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
                                // errorText:
                                //     validate ? 'Please Enter The Number' : null,
                              ),
                              disableLengthCheck: true,
                              initialCountryCode: 'IN',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                              showCountryFlag: false,
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 15, right: 20, left: 20),
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(6)
                                ],
                                obscureText: _obsecureText,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Palette.regfeildback,
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
                                  hintText: 'Password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleObscured,
                                    child: Transform.scale(
                                      scale: 0.5,
                                      child: ImageIcon(
                                        _obsecureText
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
                                keyboardType: TextInputType.number  ,
                               // autovalidateMode: AutovalidateMode.onUserInteraction,
                                //maxLength: 6,
                                controller: _pass,
                                validator: (val) {
                                  if (val!.isEmpty)
                                    return 'Please Your Password';
                                  return null;
                                }
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10, right: 20, left: 20),
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(6)
                                ],
                                obscureText:_obsecureTextMobile,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Palette.regfeildback,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  contentPadding: const EdgeInsets.all(10),
                                  hintText: 'Confirm Password',
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      'assets/images/ic_lock.png',
                                      width: 0,
                                      height: 0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleObscured2,
                                    child: Transform.scale(
                                      scale: 0.5,
                                      child: ImageIcon(
                                        _obsecureTextMobile
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
                                //autovalidateMode: AutovalidateMode.onUserInteraction,
                                // maxLength: 6,
                                controller: _confirmPass,
                                validator: (val) {
                                  if (val!.isEmpty)
                                    return 'Please Enter Confirm Password';
                                  if (val != _pass.text)
                                    return 'Password Not Match';
                                  return null;
                                }
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(top: 20, right: 20, left: 20),
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(8)
                                  ],
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Palette.regfeildback,
                                    contentPadding: const EdgeInsets.all(10),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        'assets/images/ic_referal_code.png',
                                        width: 0,
                                        height: 0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    hintText: 'Referral Code',
                                  ),
                                  // controller: emailCtr,
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 5, top: 0),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                              value: checkbox,
                                              onChanged: (value) {
                                                setState(() {
                                                  checkbox = value!;
                                                });
                                                Border.all(
                                                    color:
                                                        Palette.button_color);
                                              },
                                              side: BorderSide(
                                                  color: Palette.button_color),
                                            ),
                                            Text('I agree'),
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
                                                    TermsCondition()),
                                          );
                                        }),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 100, top: 15),
                                          //alignment: Alignment.topRight,

                                          child: Text('Terms and Condition',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      //fontFamily: KSMFontFamily.robotoRgular,
                                                      color: Color.fromARGB(
                                                          255, 15, 3, 101))),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: (() {}),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 235, top: 15),
                                          //alignment: Alignment.topRight,
                                          child: Text('&',
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
                                                    PrivacyPolicy()),
                                          );
                                        }),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 250, top: 15),
                                          //alignment: Alignment.topRight,
                                          child: Text('Privacy Policy',
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
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: SizedBox(
                              width: 300,
                              height: 40,
                              child: MaterialButton(
                                color: Palette.button_color,
                                textColor: Palette.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  setState(() {
                                    if (_formKey.currentState!.validate()) {
                                      if (fname == null || fname.isEmpty) {
                                        Fluttertoast.showToast(
                                            msg: "Enter Frist Name",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor:
                                                Color.fromARGB(255, 219, 0, 0),
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                        
                                      } else if (lname == null ||
                                          lname.isEmpty) {
                                        Fluttertoast.showToast(
                                            msg: "Enter Last Name",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor:
                                                Color.fromARGB(255, 219, 0, 0),
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                        
                                      }
                                      // else if (email == null ||
                                      //     email.isEmpty) {
                                      //   Fluttertoast.showToast(
                                      //       msg: "Enter Email Address",
                                      //       toastLength: Toast.LENGTH_SHORT,
                                      //       gravity: ToastGravity.SNACKBAR,
                                      //       timeInSecForIosWeb: 1,
                                      //       backgroundColor:
                                      //           Color.fromARGB(255, 219, 0, 0),
                                      //       textColor: Colors.white,
                                      //       fontSize: 16.0);
                                      // }
                                    } else {
                                      return null;
                                    }
                                  });
                                },
                                child: Text('Sign Up'),
                              ),
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
                                              left: 52, top: 10),
                                          //alignment: Alignment.topRight,
                                          child: Text(
                                              'Already have an account?',
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
                                                    LoginScreen()),
                                          );
                                        }),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 220, top: 10),
                                          //alignment: Alignment.topRight,
                                          child: Text('Login',
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
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }

  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      Fluttertoast.showToast(
          msg: "Enter Email Address",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          timeInSecForIosWeb: 1,
          backgroundColor: Color.fromARGB(255, 219, 0, 0),
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      return null;
    }
  }

  // String? validatefristname(String? fristname) {
  //   if (fristname == null || fristname.isEmpty) {
  //     Fluttertoast.showToast(
  //         msg: "Enter Frist Name",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.SNACKBAR,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Color.fromARGB(255, 219, 0, 0),
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //     //return 'Enter a valid email address';
  //   } else {
  //     return null;
  //   }
  // }

  String? validatelastname(String? lastname) {
    if (lastname == null || lastname.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Last Name",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          timeInSecForIosWeb: 1,
          backgroundColor: Color.fromARGB(255, 219, 0, 0),
          textColor: Colors.white,
          fontSize: 16.0);
      //return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  String? validatepassword(String? password) {
    if (password == null || password.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          timeInSecForIosWeb: 1,
          backgroundColor: Color.fromARGB(255, 219, 0, 0),
          textColor: Colors.white,
          fontSize: 16.0);
      //return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  String? validateconfirmpassword(String? confirmpassword) {
    if (confirmpassword == null || confirmpassword.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Confirm Password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          timeInSecForIosWeb: 1,
          backgroundColor: Color.fromARGB(255, 219, 0, 0),
          textColor: Colors.white,
          fontSize: 16.0);
      //return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  String? validatephonenumber(String? phonenumber) {
    if (phonenumber == null || phonenumber.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Phone Number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          timeInSecForIosWeb: 1,
          backgroundColor: Color.fromARGB(255, 219, 0, 0),
          textColor: Colors.white,
          fontSize: 16.0);
      //return 'Enter a valid email address';
    } else {
      return null;
    }
  }
}
// if (fristname == null) {
//                                         validatefristname(fristname);
//                                       } else if (lastname == null) {
//                                         validatelastname(lastname);
//                                       } else {
//                                         return null;
//                                       }
//                                     } else {
//                                       return null;