import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/constants.dart';
class CusttomButton extends StatelessWidget {

  final Color color;
  final String buttonTitle;
  final Function () onPressed;


    CusttomButton({required this.color,required this.buttonTitle,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        //shado
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: kTextBotonStyle,
          ),
        ),
      ),
    );
  }
}