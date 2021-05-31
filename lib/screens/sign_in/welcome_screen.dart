import 'package:bwa_job/screens/sign_in/components/Register_form.dart';
import 'package:bwa_job/screens/sign_in/components/background.dart';
import 'package:bwa_job/screens/sign_in/signin_form.dart';
import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Backgroud(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Build Your Next\nFuture Career Like\na Master',
              style: textLogoNormal,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '18.000 Jobs Available',
              style: body.copyWith(color: white),
            ),
            Spacer(),
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterForm()));
                      },
                      child: Text(
                        'Get Started',
                        style: body.copyWith(color: primaryColor),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: white,
                          shape: StadiumBorder(),
                          minimumSize: Size(200, 45)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInForm()));
                      },
                      child: Text('Sign In'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: StadiumBorder(),
                          shadowColor: Colors.transparent,
                          side: BorderSide(width: 2, color: primaryColor),
                          minimumSize: Size(200, 45)),
                    ),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
