import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/screens/Trips_detail.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String placeImage;
  final String Description;

  TripItem(
      {required this.id,
      required this.title,
      required this.placeImage,
      required this.Description});


  void selectTrip(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      TripsDetail.id,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    placeImage,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: [0.6, 1],
                    ),
                  ),
                  child: Text(title,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
