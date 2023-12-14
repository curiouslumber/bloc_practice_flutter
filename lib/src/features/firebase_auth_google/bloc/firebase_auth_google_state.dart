part of 'firebase_auth_google_bloc.dart';

class FirebaseAuthGoogleState {
  final String name;
  final String email;

  const FirebaseAuthGoogleState({required this.name, required this.email});
}

class FirebaseAuthGoogleInitialState extends FirebaseAuthGoogleState {
  const FirebaseAuthGoogleInitialState() : super(name: "", email: "");
}

class FirebaseAuthGoogleLoginState extends FirebaseAuthGoogleState {
  final String username;
  final String useremail;
  const FirebaseAuthGoogleLoginState(
      {required this.username, required this.useremail})
      : super(name: username, email: useremail);
}

class FirebaseAuthGoogleLogoutState extends FirebaseAuthGoogleState {
  const FirebaseAuthGoogleLogoutState() : super(name: "", email: "");
}
