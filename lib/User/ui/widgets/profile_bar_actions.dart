import 'package:button_animate/User/bloc/bloc_user.dart';
import 'package:button_animate/User/ui/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileBarActions extends StatelessWidget {
  late UserBloc userBloc;

  ProfileBarActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          CircleButton(
              mini: true,
              icon: Icons.vpn_key,
              iconSize: 20.0,
              color: const Color.fromRGBO(255, 255, 255, 0.6),
              onPressed: () => {}),
          CircleButton(
              mini: false,
              icon: Icons.add,
              iconSize: 40.0,
              color: const Color.fromRGBO(255, 255, 255, 1),
              onPressed: () => {}),
          CircleButton(
              mini: true,
              icon: Icons.exit_to_app,
              iconSize: 20.0,
              color: const Color.fromRGBO(255, 255, 255, 0.6),
              onPressed: () => {userBloc.signOut()}),
        ],
      ),
    );
  }
}
