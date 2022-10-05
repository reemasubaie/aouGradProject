import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/app_data.dart';
import 'package:saudi_toursim_guide/models/trip.dart';
import 'package:saudi_toursim_guide/screens/Trips_category_screens.dart';
import 'package:saudi_toursim_guide/screens/Trips_detail.dart';
import 'package:saudi_toursim_guide/screens/login_screen.dart';
import 'package:saudi_toursim_guide/screens/registration_screen.dart';
import 'package:saudi_toursim_guide/screens/taps_screen.dart';
import 'package:saudi_toursim_guide/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import './screens/Trips_category_screens.dart';
import './screens/Trips_detail.dart';
import './screens/taps_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Trip> _availableTrips = Trips;

    return MaterialApp(initialRoute: WelcomeScreen.id, routes: {
      WelcomeScreen.id: (context) => WelcomeScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      RegistrationScreen.id: (context) => RegistrationScreen(),

      './Trips-category': (ctx) => TripsDetail(),
      TripsCategoryScreens.id: (ctx) => TripsCategoryScreens(_availableTrips),
      TripsDetail.id: (ctx) => TripsDetail(),
    });
  }
}
