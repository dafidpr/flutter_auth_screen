import 'package:flutter/material.dart';
import 'package:flutter_auth_screen/components/custom_button.dart';
import 'package:flutter_auth_screen/components/custom_input.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  bool? _checkboxVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 50, top: 150),
                  child: Text(
                    'Forgot Password',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff000912),
                      ),
                    ),
                  ),
                ),
                CustomInput(
                  hintText: 'Email',
                  icon: Icons.mail_outline,
                  obscureText: false,
                ),
                CustomButton(
                    text: 'Send Reset Link',
                    onPressed: () {
                      _formKey.currentState!.validate();
                    }),
                FlatButton(
                  onPressed: () => {Navigator.pushNamed(context, '/login')},
                  child: Text(
                    "BACK LOGIN",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xFF008FFF),
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
