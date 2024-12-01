
import 'package:flutter/material.dart';


import '../../../constants.dart';
class CustomTextfield extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;

  const CustomTextfield({
    Key? key, required this.icon, required this.obscureText, required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Constants.primaryColor,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(icon, color: Constants.primaryColor.withOpacity(.3),),
        hintText: hintText,
      ),
      cursorColor: Constants.primaryColor.withOpacity(.5),
    );
  }
}