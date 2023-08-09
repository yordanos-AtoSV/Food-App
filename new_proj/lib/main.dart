import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'splashscreen.dart';
import 'sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
      splash: SplashScreen(),
      nextScreen: SignIn(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 3000,
    ));
  }
}
