import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/components/trip_item.dart';
import '../models/trip.dart';

class TripsCategoryScreens extends StatefulWidget {
  static const id = '/Trips-category';
  final List<Trip> availableTrips;

  TripsCategoryScreens(this.availableTrips);

  @override
  State<TripsCategoryScreens> createState() => _TripsCategoryScreensState();
}

class _TripsCategoryScreensState extends State<TripsCategoryScreens> {
  late String categoryTitle;
  late List<Trip> filterTrips;

  @override
  void initState() {
    //...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    // is not used solve this
    // final categoryTitle = routeArgument['title'];
    filterTrips = widget.availableTrips.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      filterTrips.removeWhere((trip) => trip.id == tripId);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('categoryTitle'),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return TripItem(
                id: filterTrips[index].id,
                title: filterTrips[index].title,
                placeImage: filterTrips[index].placeImage,
                Description: filterTrips[index].Description);

          },
          itemCount: filterTrips.length,
        ));
  }
}
