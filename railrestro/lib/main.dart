import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'signin.dart';
import 'signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

        return MaterialApp(
        home: AnimatedSplashScreen(
          splash:Image.asset('assets/images/whiterestro.png',),
           splashIconSize: double.maxFinite,
           nextScreen:SIGNIN(),
            duration: 40,

        ),);}

  }




