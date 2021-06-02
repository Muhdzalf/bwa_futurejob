import 'package:flutter/material.dart';

import '../../../theme.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function function;
  const PrimaryButton({
    Key key,
    @required this.title,
    @required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(title),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 45),
          primary: primaryColor,
          shape: StadiumBorder()),
    );
  }
}
