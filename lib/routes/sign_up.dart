// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 25),
                      Text(
                        "SIGNUP",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SvgPicture.asset(
                        "assets/icons/signup.svg",
                        width: 245,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 55,
                        width: 300,
                        padding:
                            EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(66),
                          color: Colors.purple[50],
                        ),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                              hintText: "user@example.com",
                              labelStyle: TextStyle(
                                  color: Color(0xFF6E37A6), fontSize: 20),
                              icon: Icon(
                                Icons.mail,
                                color: Color(0xFF6E37A6),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 55,
                        width: 300,
                        padding:
                            EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(66),
                          color: Colors.purple[50],
                        ),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                              hintText: "Password",
                              labelStyle: TextStyle(
                                  color: Color(0xFF6E37A6), fontSize: 17),
                              icon: Icon(
                                Icons.lock,
                                color: Color(0xFF6E37A6),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFF6E37A6)),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 110.0, vertical: 10.0)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(66))),
                          ),
                          child: Text(
                            "SIGNUP",
                            style: TextStyle(fontSize: 25),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an Account ?",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(width: 5,),
                          GestureDetector(
                            onDoubleTap: () {
                              Navigator.pushNamed(context, '/LogIn');
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF6E37A6)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 299,
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Color(0xFF6E37A6),
                                thickness: 1,
                              ),
                            ),
                            Text("OR"),
                            Expanded(
                              child: Divider(
                                color: Color(0xFF6E37A6),
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFF6E37A6), width: 1),
                                borderRadius: BorderRadius.circular(60)),
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              width: 25,
                              height: 25,
                              color: Color(0xFF6E37A6),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFF6E37A6), width: 1),
                                borderRadius: BorderRadius.circular(60)),
                            child: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              width: 25,
                              height: 25,
                              color: Color(0xFF6E37A6),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFF6E37A6), width: 1),
                                borderRadius: BorderRadius.circular(60)),
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              width: 25,
                              height: 25,
                              color: Color(0xFF6E37A6),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Positioned(
              top: 0.0,
              left: 0.0,
              width: 150.0,
              //height: 150,
              child: Image.asset("assets/images/signup_top.png"),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              width: 65,
              child: Image.asset("assets/images/main_bottom.png"),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              width: 120,
              child: Image.asset("assets/images/login_bottom.png"),
            ),
            
          ]),
        ),
      ),
    );
  }
}
