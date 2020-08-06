import 'package:flutter/material.dart';

//color constants
const kBackgroundColor = Color(0xFFFFBE4D);

//styles
const kHeaderStyle = BoxDecoration(
    color: Color(0xFFFFBE4D),
    borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)));

const kHeaderTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white,
  letterSpacing: 2.0,
  fontSize: 28.0,
);

const kBodyTextStyle = TextStyle(
    color: Color(0xFF575757), fontSize: 18.0, fontWeight: FontWeight.w600);

const kInnerTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 12.0,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal);
