import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing/style/custom_color.dart';
import 'package:healing/widget/custom_textformfiled.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Explore terus",
              style: TextStyle(
                  color: white,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  shadows: <Shadow>[textShadow])),
          Text("keindahan alam  di sekitar kita",
              style: TextStyle(
                  color: white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  shadows: <Shadow>[textShadow])),
        ],
      );
    }

    Widget CustomButton(String nameIcon, String nameButton, String nameLink) {
      return Container(
        width: 133,
        height: 50,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [blue, green]),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade700,
                  blurRadius: 5,
                  offset: Offset(1, 3))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(nameIcon),
              width: 26,
              height: 26,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(nameLink);
                },
                child: Text(nameButton,
                    style: TextStyle(
                      color: black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ))),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[blue, green])),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                title(),
                SizedBox(
                  height: 50,
                ),
                Text("Healing Time",
                    style: TextStyle(
                        color: white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        shadows: <Shadow>[textShadow])),
                CustomTextformfield(
                  hintText: "Masukan Email",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icon(Icons.email),
                  marginTop: 30,
                  obscureText: false,
                ),
                CustomTextformfield(
                  hintText: "Masukan Password",
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: Icon(Icons.password_rounded),
                  marginTop: 30,
                  obscureText: true,
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [blue, green]),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade700,
                            blurRadius: 5,
                            offset: Offset(1, 3))
                      ]),
                  child: TextButton(
                      onPressed: () {
                        Get.toNamed('/DetailPage');
                      },
                      child: Text("Masuk",
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ))),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("Lupa password..?",
                        style: TextStyle(
                            color: blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            shadows: <Shadow>[textShadow2]))),
                SizedBox(
                  height: 40,
                ),
                Text("Atau masuk dengan",
                    style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        shadows: <Shadow>[textShadow2])),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton("images/iconFacebook.png", "Facebook", ""),
                  SizedBox(
                    width: 30,
                  ),
                  CustomButton("images/iconGoogle.png", "Google", '')
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum memilik akun..?",
                        style: TextStyle(
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            shadows: <Shadow>[textShadow2])),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/SignUp');
                        },
                        child: Text("Daftar",
                            style: TextStyle(
                                color: blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                shadows: <Shadow>[textShadow2]))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("Syarat & Ketentuan",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            shadows: <Shadow>[textShadow2]))),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
