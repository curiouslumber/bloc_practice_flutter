import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timer_bloc_project/src/utils/app_size.dart';

class FirebaseNotifView extends StatelessWidget {
  const FirebaseNotifView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Notifications'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              // ignore: avoid_print
              print(await FirebaseMessaging.instance.getToken());
            },
            child: const Text('Get token'),
          ),
          Gap.h20,
          ElevatedButton(
            onPressed: () async {
              var status = await Permission.notification.status;
              if (status.isDenied) {
                await Permission.notification.request();
              }
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(status.toString())));
            },
            child: const Text('Request Notification Permission'),
          ),
        ],
      )),
    );
  }
}
