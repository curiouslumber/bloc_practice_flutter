import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timer_bloc_project/src/utils/app_size.dart';
import 'package:timer_bloc_project/src/utils/strings.dart';

class FirebaseAuthView extends StatelessWidget {
  const FirebaseAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        // ignore: avoid_print
        print('User is currently signed out!');
      } else {
        // ignore: avoid_print
        print('User is signed in!');
      }
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text(StringConstant.firebaseAuthTitle),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(),
              const Text(StringConstant.nameText),
              Gap.h20,
              const Text(StringConstant.emailText),
              Gap.h20,
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                  label: const Text('Login via Google')),
            ],
          ),
        ));
  }
}
