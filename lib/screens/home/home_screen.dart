import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';

import 'components/category_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: subtitle,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Dzalfiqri Sabani',
                        style: h1,
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: primaryColor)),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, bottom: 16),
                  child: Text(
                    'Hot Categories',
                    style: body,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(
                        title: 'Website Developer',
                        image: 'assets/images/background/website.png',
                      ),
                      CategoryCard(
                        title: 'Mobile Developer',
                        image: 'assets/images/background/mobile.png',
                      ),
                      CategoryCard(
                        title: 'Product Designer',
                        image: 'assets/images/background/designer.png',
                      ),
                      CategoryCard(
                        title: 'Video\nEditor',
                        image: 'assets/images/background/video.png',
                      ),
                      CategoryCard(
                        title: 'Content Writer',
                        image: 'assets/images/background/writer.png',
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
