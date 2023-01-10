import 'package:chatty/pages/auth/auth_page.dart';
import 'package:chatty/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//this page checks if the user signed in or not


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot)
        {
          if(snapshot.hasData)
            {
              return HomePage();
            }
          else
            {
              return AuthPage();
            }
        }
      )
    );
  }
}
