 import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/components/trip_item.dart';
import '../app_data.dart';
import '../components/trip_item.dart';
class TripsCategoryScreens extends StatelessWidget {
  const TripsCategoryScreens({Key? key}) : super(key: key);
static const id='/Trips-category';
  @override
  Widget build(BuildContext context) {
    final routeAgrument = ModalRoute
        .of(context)
        ?.settings
        .arguments as Map<String, String>;

    final categoryId = routeAgrument['id'];
    final categoyrTitle = routeAgrument['title'];
    final  filterTrips = Trips.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text('Travel page'),
       ),
       body: ListView.builder(
       itemBuilder: (contex, index) {
         return TripItem(
             id: filterTrips[index].id,
             title: filterTrips[index].title,
             placeImage: filterTrips[index].placeImage,
             Desecription: filterTrips[index].Description);



    },
itemCount: filterTrips.length,
       )
    );
  }
 }


