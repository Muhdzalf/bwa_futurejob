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
          SizedBox(
            height: 32,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About The Job',
                    style: body,
                  ),
                  DetailDescription(
                    text: 'Full-Time On Site',
                  )
                ],
              ))
        ],
      ),
    );
  }
}
