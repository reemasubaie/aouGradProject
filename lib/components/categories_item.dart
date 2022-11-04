import 'package:flutter/material.dart';
import '../screens/Trips_category_screens.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String placeImage;

   CategoryItem(
    this.id,
    this.title,
    this.placeImage,
  );

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(TripsCategoryScreens.id, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              placeImage,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        ],
      ),
    );
  }
}
