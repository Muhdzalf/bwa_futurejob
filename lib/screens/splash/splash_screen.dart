import 'package:bwa_job/screens/sign_in/welcome_screen.dart';
import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
