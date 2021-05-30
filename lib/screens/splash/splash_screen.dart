import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Percobaan()));
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 76,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'FUTUREJOB',
              style: textLogoBold,
            )
          ],
        )),
      ),
    );
  }
}

class Percobaan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
