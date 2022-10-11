import 'package:flutter/material.dart';

import 'package:saudi_toursim_guide/app_data.dart';
import 'package:saudi_toursim_guide/constants.dart';
import 'package:saudi_toursim_guide/screens/CommentsScreen.dart';
import 'package:saudi_toursim_guide/screens/Favorite_Screen.dart';

class TripsDetail extends StatelessWidget {
  static const id = './trip_detail';

  @override
  Widget buildSectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topLeft,
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedTrip = Trips.firstWhere((trip) => trip.id == tripId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedTrip.title}',
        style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                selectedTrip.placeImage,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                "Description",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Container(
              child: Text(
                selectedTrip.Description,
                style: TextStyle(fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
               IconButton(
                   onPressed: ()=> Navigator.pushNamed(context, CommentScreen.id),
                   icon: Icon(Icons.insert_comment_outlined)),
                IconButton(
                    onPressed: ()=> print('l'),
                    icon: Icon(Icons.favorite)),
                IconButton(
                    onPressed: ()=> print('f'),
                    icon: Icon(Icons.star)),

              ],
            )
          ],
        ),
      ),
    );
  }
}
