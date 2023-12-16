import 'package:firebase_messaging/firebase_messaging.dart';

class CustomFirebaseMessaging {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;

  static void configureFirebaseMessaging() {
    _firebaseMessaging.requestPermission(
      sound: true,
      badge: true,
      alert: true,
      announcement: false,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // ignore: avoid_print
      print('Received message: ${message.notification?.title}');
      // Handle the received message while the app is in the foreground.
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // ignore: avoid_print
      print('Opened app from notification: ${message.notification?.title}');
      // Handle the received message when the app is opened from a notification.
    });
  }
}
