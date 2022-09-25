import 'package:flutter/material.dart';

import 'package:saudi_toursim_guide/app_data.dart';
import '../components/trip_item.dart';

class TripsDetail extends StatelessWidget {
  static const id = './trip_detail';
  @override

  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedTrip = categories_data.firstWhere((trip) => trip.id == tripId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedTrip.title}'),
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
            //Container(
             // child: Text('Description',style: TextStyle(fontSize: 30),),



          ],
        ),
      ),
    );
  }
}
