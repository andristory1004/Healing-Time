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
      padding: EdgeInsets.only(left: 30, top: 189),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bgSplash.png"), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Healing Time",
            style: TextStyle(
                color: white, fontSize: 32, fontWeight: FontWeight.w600),
          ),
          Text("Advanture Explore",
              style: TextStyle(
                  color: white, fontSize: 24, fontWeight: FontWeight.w600)),
          Text("Rasakan Kebebasan Anda",
              style: TextStyle(
                  color: white, fontSize: 16, fontWeight: FontWeight.w300)),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
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
                  color: white, fontSize: 18, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    ));
  }
}
