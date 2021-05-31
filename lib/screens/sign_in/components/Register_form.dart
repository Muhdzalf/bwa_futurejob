import 'package:bwa_job/screens/sign_in/components/primary_button.dart';
import 'package:bwa_job/screens/sign_in/components/textfield_label.dart';
import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
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
                padding: EdgeInsets.only(left: 24, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: subtitle,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Begin New Journey',
                      style: h1,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                padding: EdgeInsets.all(4),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: primaryColor,
                    )),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldWithLabel(
                    label: 'Full Name',
                  ),
                  TextFieldWithLabel(
                    label: 'Email Address',
                  ),
                  TextFieldWithLabel(
                    label: 'Password',
                  ),
                  TextFieldWithLabel(
                    label: 'Your Goal',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: PrimaryButton(
                    title: 'Register',
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Back to Sign In',
                  style: subtitleLight,
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
