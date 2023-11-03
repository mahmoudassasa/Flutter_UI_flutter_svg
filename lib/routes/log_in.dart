// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SvgPicture.asset(
                        "assets/icons/login.svg",width: 288,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                    height: 55,
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: Colors.purple[50],
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintText: "user@example.com",
                          labelStyle:
                              TextStyle(color: Color(0xFF6E37A6), fontSize: 20),
                          icon: Icon(
                            Icons.mail,
                            color: Color(0xFF6E37A6),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                      SizedBox(height: 20,),
                      Container(
                    height: 55,
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 15),
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
                          labelStyle:
                              TextStyle(color: Color(0xFF6E37A6), fontSize: 17),
                          icon: Icon(
                            Icons.lock,
                            color: Color(0xFF6E37A6),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF6E37A6)),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            horizontal: 110.0, vertical: 10.0)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66))),
                      ),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 25),
                      )),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 80,),
                      Text(
                        "Don't have an Account ?",
                        style: TextStyle(fontSize: 17,),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {Navigator.pushNamed(context, '/SignUp');},
                        child: Text(
                          "Sign Up",
                          style:
                              TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Color(0xFF6E37A6)),
                        ),
                      )
                    ],
                  ),
                    
                    ],
                  ),
                )),
            Positioned(
              top: 0.0,
              left: 0.0,
              width: 150.0,
              //height: 150,
              child: Image.asset("assets/images/main_top.png"),
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
