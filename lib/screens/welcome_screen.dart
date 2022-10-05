import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/components/costtom_button.dart';
import 'package:saudi_toursim_guide/constants.dart';
import 'package:saudi_toursim_guide/screens/Favorite_Screen.dart';
import 'package:saudi_toursim_guide/screens/categoreis_screen.dart';
import 'package:saudi_toursim_guide/screens/login_screen.dart';
import 'package:saudi_toursim_guide/screens/registration_screen.dart';
import '../models/trip.dart';
import '../screens/taps_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  List<Trip>_FavoriteTrips=[];
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                // I used hero to see transition of the logo in screens
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/Logo.png'),
                    height: 70.0,
                  ),
                ),
                Center(
                  child: Text(
                    'Saudi Tourism Guide',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            CusttomButton(
              color: kMyGreen,
              buttonTitle: 'Log In',
              onPressed: () {
                //Go to login screen.
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            CusttomButton(
              color:  kMyGreen,
              buttonTitle: 'Register',
              onPressed: () {
                //Go to registration.
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
            CusttomButton(

              color: Colors.grey.shade500,
              buttonTitle: 'Guest',
              onPressed: () { Navigator.push(context,MaterialPageRoute(builder: (context)=>TabsScreen(FavoritesScreen))

              );


                //Go to tour page
              },
            ),
          ],
        ),
      ),
    );
  }
}
