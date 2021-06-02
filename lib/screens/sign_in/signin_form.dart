import 'package:bwa_job/screens/home/home_screen.dart';
import 'package:bwa_job/screens/sign_in/Register_form.dart';
import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';

import 'components/primary_button.dart';
import 'components/textfield_label.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign In',
                      style: subtitle,
                    ),
                    Text(
                      'Build Your Career',
                      style: h1,
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 49, vertical: 40),
                    child: Image.asset(
                      'assets/images/vector/work.png',
                      height: 240,
                    ),
                  )),
              TextFieldWithLabel(
                label: 'Email Address',
              ),
              TextFieldWithLabel(
                label: 'Password',
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: PrimaryButton(
                  title: 'Sign In',
                  function: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterForm()));
                  },
                  child: Text(
                    'Create New Account',
                    style: subtitleLight,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
