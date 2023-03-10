import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inseat/ui/login/login.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../palette.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
   bool byEmail = true;
  late TextEditingController mobileCtr;
  late TextEditingController emailCtr;
  late TextEditingController password;
  late TextEditingController passwordMobile;

  @override
  void initState() {
    mobileCtr = TextEditingController();
    emailCtr = TextEditingController();
    password = TextEditingController();
    passwordMobile = TextEditingController();

    super.initState();
  }
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
                  'Forgot Password',
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              height: 20,
            ),
             Expanded(
              child: SingleChildScrollView(
                child: Form(
                  child: Padding(padding: EdgeInsets.all(0),
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
                                        horizontal: 10, vertical: 12),
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
                                        horizontal: 10, vertical: 12),
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
                                EdgeInsets.only(top: 30, right: 20, left: 20),
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
                                EdgeInsets.only(top: 30, left: 20, right: 20),
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
                           Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: SizedBox(
                            width: 320,
                            height: 40,
                            child: MaterialButton(
                              color: Palette.button_color,
                              textColor: Palette.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                 
                                      ),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) =>
                                //           const Signup_Screen()),
                                // );
                              },
                              child: Text(
                                'Reset Password',
                                //style: TextStyle(color: Palette.button_color),
                              ),
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
                                              'Remember Password?',
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
                                              left: 200, top: 10),
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
                  )
                ),
              )
              )

          ],
        ))
      )
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
}