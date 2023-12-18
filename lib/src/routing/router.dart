import 'package:flutter/material.dart';
import 'package:timer_bloc_project/src/utils/strings.dart';
import 'package:timer_bloc_project/src/views/counter/counter.dart';
import 'package:timer_bloc_project/src/views/firebase_auth/firebase_auth.dart';
import 'package:timer_bloc_project/src/views/firebase_msg/firebase_messaging.dart';
import 'package:timer_bloc_project/src/views/firebase_notifications/firebase_notif.dart';
import 'package:timer_bloc_project/src/views/home/homepage.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case StringConstant.routeHome:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case StringConstant.routeCounter:
        return MaterialPageRoute(builder: (_) => const Counter());
      case StringConstant.routeFirebaseAuth:
        return MaterialPageRoute(builder: (_) => const FirebaseAuthView());
      case StringConstant.routeFirebaseNotif:
        return MaterialPageRoute(builder: (_) => const FirebaseNotifView());
      case StringConstant.routeFirebaseMessaging:
        return MaterialPageRoute(builder: (_) => const FirebaseMessagingView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
