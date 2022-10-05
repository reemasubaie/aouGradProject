import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/app_data.dart';
import '../components/trip_item.dart';
import '../models/trip.dart';

class FavoritesScreen extends StatelessWidget {
  //const FavoritesScreen({Key? key}) : super(key: key);
final List<Trip>favoriteTrips;
FavoritesScreen(this.favoriteTrips);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You do not any trip in your favorite'),

    );
  }
}
