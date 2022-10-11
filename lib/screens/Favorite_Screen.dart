import 'package:flutter/material.dart';
import '../components/trip_item.dart';
import '../models/trip.dart';
//TODO
class FavoritesScreen extends StatelessWidget {
  final List<Trip> favoriteTrips;
  FavoritesScreen(this.favoriteTrips);
  @override
  Widget build(BuildContext context) {
    if (favoriteTrips.isEmpty) {
      return const Center(
        child: Text('You do not any trip in your favorite'),
      );
    } else {
      return ListView.builder(itemBuilder: (context, index) {
        return TripItem(
            id: favoriteTrips[index].id,
            title: favoriteTrips[index].title,
            placeImage: favoriteTrips[index].placeImage,
            Description: favoriteTrips[index].Description);
      });
    }
  }
}
