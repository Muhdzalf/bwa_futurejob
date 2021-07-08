import 'package:bwa_job/models/user_model.dart';
import 'package:bwa_job/providers/auth_provider.dart';
import 'package:bwa_job/providers/user_provider.dart';
import 'package:bwa_job/screens/home/home_screen.dart';
import 'package:bwa_job/screens/sign_in/components/primary_button.dart';
import 'package:bwa_job/screens/sign_in/components/textfield_label.dart';
import 'package:bwa_job/screens/sign_in/signin_form.dart';
import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterForm extends StatelessWidget {
  // Textfield Controller
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController goalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Provider
    var userProvider = Provider.of<UserProvider>(context);
    var authProvider = Provider.of<AuthProvider>(context);

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
                    jenisController: nameController,
                    obscureText: false,
                  ),
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
                  TextFieldWithLabel(
                    label: 'Your Goal',
                    jenisController: goalController,
                    obscureText: false,
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
                    function: () async {
                      if (nameController.text.isEmpty ||
                          emailController.text.isEmpty ||
                          passwordController.text.isEmpty ||
                          goalController.text.isEmpty) {
                        showError('Data Tidak Boleh Kosong');
                      } else {
                        UserModel user = await authProvider.register(
                            emailController.text,
                            passwordController.text,
                            nameController.text,
                            goalController.text);
                        if (user == null) {
                          showError('Maaf Email sudah Terdaftar');
                        } else {
                          userProvider.user = user;
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                              (route) => false);
                        }
                      }
                    },
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInForm()));
                },
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
