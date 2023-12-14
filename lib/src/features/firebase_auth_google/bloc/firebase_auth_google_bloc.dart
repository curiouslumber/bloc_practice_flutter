// ignore_for_file: avoid_print
import 'package:flutter_bloc/flutter_bloc.dart';
part 'firebase_auth_google_event.dart';
part 'firebase_auth_google_state.dart';

class FirebaseAuthGoogleBloc
    extends Bloc<FirebaseAuthGoogleEvent, FirebaseAuthGoogleState> {
  // Initial State
  FirebaseAuthGoogleBloc() : super(const FirebaseAuthGoogleInitialState()) {
    // On User Login
    on<FirebaseAuthGoogleLoginEvent>((event, emit) {
      print("Logging in");
      emit(const FirebaseAuthGoogleLoginState(
          username: "Noel", useremail: "np47@gmail.com"));
    });

    // On User Logout
    on<FirebaseAuthGoogleLogoutEvent>((event, emit) {
      print("Logging out");
      emit(const FirebaseAuthGoogleLogoutState());
    });
  }
}
