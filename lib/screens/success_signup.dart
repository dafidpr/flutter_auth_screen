import 'package:flutter/material.dart';
import 'package:flutter_auth_screen/components/custom_button.dart';
import 'package:flutter_auth_screen/components/custom_input.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SuccessSignUpScreen extends StatefulWidget {
  @override
  _SuccessSignUpScreenState createState() => _SuccessSignUpScreenState();
}

class _SuccessSignUpScreenState extends State<SuccessSignUpScreen> {
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
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 150),
                child: Text(
                  'Thank you for signing up!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff000912),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000912),
                    ),
                  ),
                ),
              ),
              CustomButton(
                  text: 'Continue Shopping',
                  onPressed: () {
                    _formKey.currentState!.validate();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
