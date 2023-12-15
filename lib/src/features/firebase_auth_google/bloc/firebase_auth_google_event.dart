part of 'firebase_auth_google_bloc.dart';

abstract class FirebaseAuthGoogleEvent {}

class FirebaseAuthGoogleLoginEvent extends FirebaseAuthGoogleEvent {
  final BuildContext context;

  FirebaseAuthGoogleLoginEvent(this.context);
}

class FirebaseAuthGoogleLogoutEvent extends FirebaseAuthGoogleEvent {
  final BuildContext context;

  FirebaseAuthGoogleLogoutEvent(this.context);
}
