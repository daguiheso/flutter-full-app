import 'package:button_animate/widgets/ds_button.dart';
import 'package:button_animate/widgets/gradient_back.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignIn();
  }
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(title: '', height: MediaQuery.of(context).size.height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                child: Text(
                  'Welcome \n This is yout travel App',
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 37.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              DsButton(
                  text: 'Login with Gmail',
                  onPressed: () {},
                  height: 50.0,
                  width: 300.0)
            ],
          )
        ],
      ),
    );
  }
}
