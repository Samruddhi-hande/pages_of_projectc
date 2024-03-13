import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:pages_of_projectc/pages/signin.dart';



class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "MONEY",
                style: TextStyle(
                    foreground: Paint()
                      ..shader = ui.Gradient.linear(
                          const Offset(0, 20),
                          const Offset(150, 20),
                          <Color>[Colors.purple, Colors.pink]),
                    fontSize: 70,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "MANAGEMENT",
                style: TextStyle(
                    foreground: Paint()
                      ..shader = ui.Gradient.linear(
                          const Offset(0, 20),
                          const Offset(150, 20),
                          <Color>[Colors.purple, Colors.pink]),
                    fontSize: 70,
                    fontWeight: FontWeight.w100),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "POWERED BY AI",
                style: TextStyle(
                    foreground: Paint()
                      ..shader = ui.Gradient.linear(
                          const Offset(30, 90),
                          const Offset(150, 50),
                          <Color>[Colors.yellow, Colors.grey]),
                    fontSize: 100,
                    fontWeight: FontWeight.w100),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: ()  => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const signin())) ,
                  child: Text(
                    "sign up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w100),
                  ))
            ],
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}