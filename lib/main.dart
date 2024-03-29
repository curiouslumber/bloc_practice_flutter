import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timer_bloc_project/firebase_options.dart';
import 'package:timer_bloc_project/src/features/counter/bloc/counter_bloc.dart';
import 'package:timer_bloc_project/src/features/firebase_auth_google/bloc/firebase_auth_google_bloc.dart';
import 'package:timer_bloc_project/src/resources/firebase_notifications/firebase_messaging.dart';
import 'package:timer_bloc_project/src/utils/colors.dart';
import 'package:timer_bloc_project/src/utils/strings.dart';
import 'package:timer_bloc_project/src/routing/router.dart' as app_router;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  CustomFirebaseMessaging.configureFirebaseMessaging();
  FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => FirebaseAuthGoogleBloc(),
        )
      ],
      child: MaterialApp(
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
        ],
        debugShowCheckedModeBanner: false,
        title: StringConstant.appTitle,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primarySwatch),
          useMaterial3: true,
          textTheme: GoogleFonts.latoTextTheme(),
        ),
        themeAnimationCurve: Curves.fastLinearToSlowEaseIn,
        initialRoute: StringConstant.routeHome,
        onGenerateRoute: app_router.Router.generateRoute,
      ),
    );
  }
}
