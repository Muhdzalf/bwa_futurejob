import 'package:flutter/material.dart';

import '../../../theme.dart';

class Backgroud extends StatelessWidget {
  final Widget child;
  const Backgroud({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background/website.png'),
            fit: BoxFit.cover),
      ),
      child: Container(
        color: primaryColor.withOpacity(0.6),
        child: child,
      ),
    );
  }
}
