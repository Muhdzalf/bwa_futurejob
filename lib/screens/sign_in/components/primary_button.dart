import 'package:flutter/material.dart';

import '../../../theme.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Sign In'),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 45),
          primary: primaryColor,
          shape: StadiumBorder()),
    );
  }
}
