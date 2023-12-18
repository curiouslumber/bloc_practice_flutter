import 'package:flutter/material.dart';
import 'package:timer_bloc_project/src/utils/strings.dart';

class FirebaseMessagingView extends StatelessWidget {
  const FirebaseMessagingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringConstant.firebaseMessagingTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}
