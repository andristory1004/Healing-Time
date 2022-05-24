import 'package:flutter/material.dart';
import 'package:healing/Style/custom_color.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Join us and get \nyour next journey",
              style: TextStyle(
                  color: purpleText, fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Container(
              child: Column(
                children: [
                  Text("Full Name"),
                  TextField(
                    autofocus: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
