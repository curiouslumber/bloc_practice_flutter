import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timer_bloc_project/src/features/counter/bloc/counter_bloc.dart';
import 'package:timer_bloc_project/src/utils/colors.dart';
import 'package:timer_bloc_project/src/utils/strings.dart';
import 'package:timer_bloc_project/src/routing/router.dart' as app_router;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: StringConstant.appTitle,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primarySwatch),
          useMaterial3: true,
          textTheme: GoogleFonts.latoTextTheme(),
        ),
        initialRoute: StringConstant.routeHome,
        onGenerateRoute: app_router.Router.generateRoute,
      ),
    );
  }
}
