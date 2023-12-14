import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_bloc_project/src/features/firebase_auth_google/bloc/firebase_auth_google_bloc.dart';
import 'package:timer_bloc_project/src/utils/app_size.dart';
import 'package:timer_bloc_project/src/utils/strings.dart';

class FirebaseAuthView extends StatelessWidget {
  const FirebaseAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        // ignore: avoid_print
        print('User is currently signed out!');
      } else {
        // ignore: avoid_print
        print('User is signed in!');
      }
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text(StringConstant.firebaseAuthTitle),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocConsumer<FirebaseAuthGoogleBloc, FirebaseAuthGoogleState>(
                listener: (context, state) {
                  if (state is FirebaseAuthGoogleLoginState) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Logged In"),
                    ));
                  } else if (state is FirebaseAuthGoogleLogoutState) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Logged Out"),
                    ));
                  }
                },
                builder: (context, state) {
                  return Column(
                    children: [
                      Text(StringConstant.nameText + state.name),
                      Gap.h20,
                      Text(StringConstant.emailText + state.email),
                      Gap.h20,
                      state is FirebaseAuthGoogleLoginState
                          ? ElevatedButton.icon(
                              onPressed: () => context
                                  .read<FirebaseAuthGoogleBloc>()
                                  .add(FirebaseAuthGoogleLogoutEvent()),
                              icon: const Icon(Icons.logout),
                              label: const Text('Logout'))
                          : ElevatedButton.icon(
                              onPressed: () => context
                                  .read<FirebaseAuthGoogleBloc>()
                                  .add(FirebaseAuthGoogleLoginEvent()),
                              icon: const Icon(Icons.logout),
                              label: const Text('Login')),
                    ],
                  );
                },
              ),
            ],
          ),
        ));
  }
}
