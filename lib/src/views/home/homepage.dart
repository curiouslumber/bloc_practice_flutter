import 'package:flutter/material.dart';
import 'package:timer_bloc_project/src/utils/app_size.dart';
import 'package:timer_bloc_project/src/utils/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(StringConstant.homeTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, StringConstant.routeCounter);
                },
                child: const Text(StringConstant.counterButtonTitle)),
            Gap.h20,
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, StringConstant.routeFirebaseAuth);
              },
              child: const Text(StringConstant.firebaseAuthTitle),
            ),
            Gap.h20,
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, StringConstant.routeFirebaseNotif);
                },
                child: const Text(StringConstant.firebaseNotifTitle)),
            Gap.h20,
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, StringConstant.routeFirebaseMessaging);
              },
              child: const Text("Firebase Messaging"),
            )
          ],
        ),
      ),
    );
  }
}
