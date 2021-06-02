import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24, top: 30, right: 24),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
