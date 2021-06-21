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
          // About The job
          Container(
              padding: EdgeInsets.only(left: 24, top: 30),
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
                  SizedBox(
                    height: 16,
                  ),
                  DetailDescription(
                    text: 'Start at \$18,000 per month',
                  )
                ],
              )),
          Container(
              padding: EdgeInsets.only(left: 24, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Qualification',
                    style: body,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailDescription(
                    text:
                        'Candidate must possess at least a Bachelor\'s Degree.',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailDescription(
                    text: 'Start at \$18,000 per month',
                  )
                ],
              )),
        ],
      ),
    );
  }
}
