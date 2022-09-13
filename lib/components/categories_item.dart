import 'package:flutter/material.dart';
class CategoriesItem extends StatelessWidget {
  final String title;
  final String placeImage;


  CategoriesItem(
      this.title,this.placeImage);


  @override
  Widget build(BuildContext context) {
    var image;
    return Stack(
      children: [ image.Asset(placeImage,
          height:250,
          BoxFit.cover),
        Container(padding: EdgeInsets.all( 10),
          alignment: Alignment.center,
          child: Text
            ('title',style: TextStyle(fontSize: 30,color: Colors.white),
          ),

          decoration: BoxDecoration(color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15)),
        )






      ],

    );
  }


}
