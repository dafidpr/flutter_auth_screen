import 'package:flutter/material.dart';
import 'package:flutter_auth_screen/components/custom_button.dart';
import 'package:flutter_auth_screen/components/custom_input.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    'Sign In',
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
                CustomInput(
                  hintText: 'Password',
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: _checkboxVal,
                          activeColor: Colors.blue,
                          onChanged: (bool? value) {
                            setState(() {
                              _checkboxVal = value;
                            });
                          },
                        ),
                        Text(
                          'Remember me',
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA6B0BD),
                            ),
                          ),
                        ),
                      ],
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA6B0BD),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                    text: 'Sign In',
                    onPressed: () {
                      _formKey.currentState!.validate();
                    }),
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xffA6B0BD),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () => {Navigator.pushNamed(context, '/signup')},
                  child: Text(
                    "SIGN UP NOW",
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
