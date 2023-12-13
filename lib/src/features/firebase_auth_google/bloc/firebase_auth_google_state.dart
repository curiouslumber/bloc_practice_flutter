part of 'firebase_auth_google_bloc.dart';

class FirebaseAuthGoogleState {
  final bool isLoading;

  const FirebaseAuthGoogleState({required this.isLoading});
}

class FirebaseAuthGoogleInitialState extends FirebaseAuthGoogleState {
  const FirebaseAuthGoogleInitialState() : super(isLoading: false);
}

class FirebaseAuthGoogleLoginState extends FirebaseAuthGoogleState {
  const FirebaseAuthGoogleLoginState() : super(isLoading: false);
}

class FirebaseAuthGoogleLogoutState extends FirebaseAuthGoogleState {
  const FirebaseAuthGoogleLogoutState() : super(isLoading: false);
}
