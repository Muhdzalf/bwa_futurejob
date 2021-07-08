import 'package:bwa_job/models/user_model.dart';
import 'package:bwa_job/providers/auth_provider.dart';
import 'package:bwa_job/providers/user_provider.dart';
import 'package:bwa_job/screens/home/home_screen.dart';
import 'package:bwa_job/screens/sign_in/Register_form.dart';
import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/primary_button.dart';
import 'components/textfield_label.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    var authProvider = Provider.of<AuthProvider>(context);
    var userProvider = Provider.of<UserProvider>(context);

    void showError(String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            message,
            style: body.copyWith(color: white),
          )));
    }

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
                jenisController: emailController,
                obscureText: false,
              ),
              TextFieldWithLabel(
                label: 'Password',
                jenisController: passwordController,
                obscureText: true,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: PrimaryButton(
                  title: 'Sign In',
                  function: () async {
                    if (emailController.text.isEmpty ||
                        passwordController.text.isEmpty) {
                      showError('periksa kembali email dan password anda');
                    } else {
                      UserModel user = await authProvider.login(
                          emailController.text, passwordController.text);

                      if (user == null) {
                        showError('email dan password salah');
                      } else {
                        userProvider.user = user;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }
                    }
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
