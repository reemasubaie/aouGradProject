import 'package:flutter/material.dart';

const kTextBotonStyle = TextStyle(
  color: Colors.white,
);
const kSendButtonTextStyle = TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMyGreen = Color(0xff51C041);

const kTextfeldDecor = InputDecoration(
  hintText: 'Enter',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  //screen before user type something in it looks
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kMyGreen, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  //screen when user type something in it looks
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kMyGreen, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
