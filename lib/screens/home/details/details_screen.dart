import 'package:flutter/material.dart';

import '../../../theme.dart';
import 'components/detail_desc.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/social_media/google.png',
                  height: 60,
                ),
                Text(
                  'Front-End Developer',
                  style: h1,
                ),
                Text(
                  'Google, Inc • Jakarta',
                  style: subtitle,
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About The Job',
                    style: body,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailDescription(
                    text: 'Full-Time On Site',
                  ),
                  DetailDescription(
                    text: 'Start at \$18,000 per month',
                  )
                ],
              ))
        ],
      ),
    );
  }
}
