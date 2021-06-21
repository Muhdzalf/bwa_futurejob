import 'package:flutter/material.dart';

import '../../../../theme.dart';

class DetailDescription extends StatelessWidget {
  final String text;
  const DetailDescription({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/icons/dot.png',
          height: 12,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text(
            text,
            style: bodyLight,
          ),
        )
      ],
    );
  }
}
