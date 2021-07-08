import 'package:flutter/material.dart';

import '../../../theme.dart';

class RoundedTextField extends StatelessWidget {
  final bool obscureText;
  final TextEditingController jenisController;
  const RoundedTextField({
    Key key,
    this.jenisController,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: jenisController,
      obscureText: obscureText,
      style: body.copyWith(color: primaryColor),
      decoration: InputDecoration(
          filled: true,
          fillColor: darkgrey,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none)),
    );
  }
}
