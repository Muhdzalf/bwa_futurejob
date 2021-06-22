import 'package:bwa_job/providers/auth_provider.dart';
import 'package:bwa_job/providers/user_provider.dart';
import 'package:bwa_job/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(
            create: (context) => UserProvider()),
        ChangeNotifierProvider<AuthProvider>(
            create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Future Job',
        theme: ThemeData(fontFamily: 'Poppins'),
        home: SplashScreen(),
      ),
    );
  }
}
