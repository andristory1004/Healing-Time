import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing/Style/custom_color.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/bgSplash.png"),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 200, left: 20),
                  child: Column(
                    children: [
                      Text(
                        "Healing Time",
                        style: TextStyle(
                            color: white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600),
                      ),
                      Text("Advanture Explore",
                          style: TextStyle(
                              color: white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600)),
                      Text("Rasakan Kebebasan Anda",
                          style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 300,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: purple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          Get.toNamed('/HomePage');
                        },
                        child: Text(
                          "Let's Go..!",
                          style: TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                )
              ],
            )));
  }
}
