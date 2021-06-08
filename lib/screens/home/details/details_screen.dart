import 'package:flutter/material.dart';

import '../../../theme.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/background/mobile.png'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.transparent,
                    primaryColor.withOpacity(0.7)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 56,
                        left: 24,
                        child: Text('Mobile Developer',
                            style: h1.copyWith(color: white)),
                      ),
                      Positioned(
                        left: 24,
                        bottom: 30,
                        child: Text('12,435 Jobs Available',
                            style:
                                body.copyWith(color: greyText, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(flex: 3, child: Container())
        ],
      ),
    );
  }
}
