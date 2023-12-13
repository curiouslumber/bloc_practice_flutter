import 'package:flutter/material.dart';
import 'package:timer_bloc_project/src/utils/strings.dart';

class FirebaseAuthView extends StatelessWidget {
  const FirebaseAuthView({super.key});

  @override
  Widget build(BuildContext context) {
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
              const Text('Name : '),
              const Text('Email'),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                  label: const Text('Login')),
            ],
          ),
        ));
  }
}
