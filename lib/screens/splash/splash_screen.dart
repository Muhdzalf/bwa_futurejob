import 'package:bwa_job/screens/sign_in/welcome_screen.dart';
import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()));
        },
        child: Center(
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
