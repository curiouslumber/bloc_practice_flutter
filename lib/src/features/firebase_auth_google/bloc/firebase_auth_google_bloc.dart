// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_bloc_project/src/models/user.dart';
import 'package:timer_bloc_project/src/resources/fireauth_google_provider.dart';
part 'firebase_auth_google_event.dart';
part 'firebase_auth_google_state.dart';

class FirebaseAuthGoogleBloc
    extends Bloc<FirebaseAuthGoogleEvent, FirebaseAuthGoogleState> {
  // Initial State
  FirebaseAuthGoogleBloc() : super(const FirebaseAuthGoogleInitialState()) {
    // On User Login
    on<FirebaseAuthGoogleLoginEvent>((event, emit) async {
      print("Logging in");
      await Authentication.signInWithGoogle(context: event.context);

      emit(FirebaseAuthGoogleLoginState(
          username: AccountUser().getAccountName(),
          useremail: AccountUser().getAccountEmail()));
    });

    // On User Logout
    on<FirebaseAuthGoogleLogoutEvent>((event, emit) async {
      print("Logging out");
      await Authentication.signOut(context: event.context);
      emit(const FirebaseAuthGoogleLogoutState());
    });
  }
}
