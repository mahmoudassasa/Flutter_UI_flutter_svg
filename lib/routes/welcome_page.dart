// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                left: 0.0,
                child: Image.asset(
                  "assets/images/main_top.png",width: 100,
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                child: Image.asset("assets/images/main_bottom.png", width: 65,
),
              ),
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 30),

                    Text(
                      "WELCOME TO EDU",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 50),
                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                      width: 350,
                      alignment: Alignment.bottomCenter,
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/LogIn');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF6E37A6)),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 100.0, vertical: 10.0)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(66))),
                        ),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 25),
                        )),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/SignUp');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.purple[50]),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 90.0, vertical: 10.0)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(66))),
                        ),
                        child: Text(
                          "SIGNUP",
                          style:
                              TextStyle(fontSize: 25, color: Color(0xFF6E37A6)),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
