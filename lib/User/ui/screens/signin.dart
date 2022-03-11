import 'package:button_animate/User/bloc/bloc_user.dart';
import 'package:button_animate/navigation_trips.dart';
import 'package:button_animate/widgets/ds_button.dart';
import 'package:button_animate/widgets/gradient_back.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignIn();
  }
}

class _SignIn extends State<SignIn> {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          } else {
            return const NavigationTrips();
          }
        });
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
                  onPressed: () {
                    userBloc.signIn().then((UserCredential user) =>
                        // ignore: avoid_print, unnecessary_brace_in_string_interps
                        print('User ${user} w'));
                  },
                  height: 50.0,
                  width: 300.0)
            ],
          )
        ],
      ),
    );
  }
}
