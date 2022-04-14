import 'package:flutter/material.dart';
import 'package:flutter_auth_screen/screens/forgot_password.dart';
import 'package:flutter_auth_screen/screens/login.dart';
import 'package:flutter_auth_screen/screens/reset_password.dart';
import 'package:flutter_auth_screen/screens/signup.dart';
import 'package:flutter_auth_screen/screens/success_reset_password.dart';
import 'package:flutter_auth_screen/screens/success_send_reset_password.dart';
import 'package:flutter_auth_screen/screens/success_signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/success-signup': (context) => SuccessSignUpScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/success-send-reset-password': (context) => SuccessSendResetPassword(),
        '/reset-password': (context) => ResetPasswordScreen(),
        '/success-reset-password': (context) => SuccessResetPasswordScreen(),
      },
    );
  }
}
