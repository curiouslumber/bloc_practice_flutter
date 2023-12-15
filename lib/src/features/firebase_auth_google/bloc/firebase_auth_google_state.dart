part of 'firebase_auth_google_bloc.dart';

class FirebaseAuthGoogleState {
  final String avatarUrl;
  final String name;
  final String email;

  const FirebaseAuthGoogleState(
      {required this.avatarUrl, required this.name, required this.email});
}

class FirebaseAuthGoogleInitialState extends FirebaseAuthGoogleState {
  const FirebaseAuthGoogleInitialState()
      : super(avatarUrl: "", name: "", email: "");
}

class FirebaseAuthGoogleLoginState extends FirebaseAuthGoogleState {
  final String userAvatarUrl;
  final String username;
  final String useremail;
  const FirebaseAuthGoogleLoginState(
      {required this.userAvatarUrl,
      required this.username,
      required this.useremail})
      : super(avatarUrl: userAvatarUrl, name: username, email: useremail);
}

class FirebaseAuthGoogleLogoutState extends FirebaseAuthGoogleState {
  const FirebaseAuthGoogleLogoutState()
      : super(avatarUrl: "", name: "", email: "");
}
