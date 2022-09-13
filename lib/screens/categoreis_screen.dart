import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/constants.dart';
import 'package:saudi_toursim_guide/models/categories.dart';
import '../app_data.dart';
import '../components/categories_item.dart';

class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Explore Saudi Arabia'),


    ),

        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,

          ),
          children:categories_data.map((categoryData) =>
              CategoriesItem(categoryData.title, categoryData.placeImage)).toList(),
        ),
    );

  }


}



