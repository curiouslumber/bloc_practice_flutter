import 'package:flutter/material.dart';

class FirebaseNotifView extends StatelessWidget {
  const FirebaseNotifView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Notifications'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}
