import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/screens/login_screen.dart';
import 'package:saudi_toursim_guide/screens/registration_screen.dart';
import 'package:saudi_toursim_guide/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: WelcomeScreen.id ,
      routes: {
       WelcomeScreen.id :(context)=> WelcomeScreen(),
        LoginScreen.id : (context)=> LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
      }
      ,

    );
  }
}

