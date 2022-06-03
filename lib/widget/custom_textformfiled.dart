import 'package:flutter/material.dart';
import 'package:healing/style/custom_color.dart';

class CustomTextformfield extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Icon prefixIcon;
  final double marginTop;
  final bool obscureText;
  const CustomTextformfield({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    required this.prefixIcon,
    required this.marginTop,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      width: 350,
      height: 50,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade700,
                blurRadius: 5,
                offset: Offset(1, 3))
          ]),
      child: Center(
        child: TextFormField(
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              prefixIcon: prefixIcon,
              prefixIconColor: green,
              hintText: hintText,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
