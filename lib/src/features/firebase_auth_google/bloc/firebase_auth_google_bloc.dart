import 'package:flutter_bloc/flutter_bloc.dart';
part 'firebase_auth_google_event.dart';
part 'firebase_auth_google_state.dart';

class FirebaseAuthGoogleBloc
    extends Bloc<FirebaseAuthGoogleEvent, FirebaseAuthGoogleState> {
  FirebaseAuthGoogleBloc() : super(const FirebaseAuthGoogleInitialState()) {
    on<FirebaseAuthGoogleLoginEvent>((event, emit) {
      emit(const FirebaseAuthGoogleLoginState());
    });
    on<FirebaseAuthGoogleLogoutEvent>((event, emit) {
      emit(const FirebaseAuthGoogleLogoutState());
    });
  }
}
