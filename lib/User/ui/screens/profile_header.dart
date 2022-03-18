import 'package:button_animate/User/bloc/bloc_user.dart';
import 'package:button_animate/User/model/user.dart';
import 'package:flutter/material.dart';
import 'package:button_animate/User/ui/widgets/profile_bar_actions.dart';
import 'package:button_animate/User/ui/widgets/profile_info.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileHeader extends StatelessWidget {
  late UserBloc userBloc;
  late User user;

  ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // ignore: avoid_print
          print(snapshot.connectionState);
          switch (snapshot.connectionState) {
            case ConnectionState.active:
            case ConnectionState.done:
              return showProfileData(snapshot);
            default:
              return const Text('pepe');
          }
        });
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      // ignore: avoid_print
      print('No logeado!');
      return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: const <Widget>[
            CircularProgressIndicator(),
            Text('No se pudo cargar la informción, Haz Login.')
          ],
        ),
      );
    } else {
      // ignore: avoid_print
      print('Logeado!');
      final user = User(
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photo: snapshot.data.photoURL);
      const title = Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            'Profile',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'Lato'),
          ));

      return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[title],
            ),
            ProfileInfo(user: user),
            ProfileBarActions(),
          ],
        ),
      );
    }
  }
}
