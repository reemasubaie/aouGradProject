import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/screens/Trips_category_screens.dart';
import 'package:saudi_toursim_guide/screens/Trips_detail.dart';
import 'package:saudi_toursim_guide/screens/categoreis_screen.dart';
import 'package:saudi_toursim_guide/screens/login_screen.dart';
import 'package:saudi_toursim_guide/screens/registration_screen.dart';
import 'package:saudi_toursim_guide/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import './screens/categoreis_screen.dart';
import './screens/Trips_category_screens.dart';
import './components/categories_item.dart';
import './screens/Trips_detail.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        './Trips-category': (ctx) => TripsCategoryScreens(),
        TripsCategoryScreens.id: (ctx) => TripsCategoryScreens(),
        TripsDetail.id:(ctx)=>TripsDetail(),


      }


    );
  }
}

