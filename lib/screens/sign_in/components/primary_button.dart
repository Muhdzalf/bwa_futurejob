import 'package:flutter/material.dart';

import '../../../theme.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  const PrimaryButton({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 45),
          primary: primaryColor,
          shape: StadiumBorder()),
    );
  }
}
