import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/firebase/firebase_db_cubit.dart';
import 'package:service_app/core/globals.dart';
import 'package:service_app/presentation/lock_screen/authentication_screen.dart';
import 'package:service_app/presentation/lock_screen/lock_screen_page.dart';
import 'package:service_app/presentation/lock_screen/signup_page.dart';
import 'package:service_app/presentation/widgets/loading_screen/loading_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    (() async {
      await Future.delayed(Duration.zero);
      final isLoggedIn = Globals.firebaseUser != null;
      var userExists = false;
      if (isLoggedIn && mounted) {
        final user = await context.read<FirebaseDbCubit>().getUserIfExists();
        userExists = user != null;
      }
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        isLoggedIn
            ? !userExists
                ? MaterialPageRoute(builder: (context) => const SignUpPage())
                : MaterialPageRoute(
                    builder: (context) => const LockScreenPage())
            : MaterialPageRoute(
                builder: (context) => const AuthenticationScreen()),
      );
    })();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingScreen(),
    );
  }
}
