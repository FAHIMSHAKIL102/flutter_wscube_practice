import 'package:flutter/material.dart';

Color orangeColor = Colors.orange;



TextStyle myTextstyle12({Color blackColor = Colors.black}) {
  return TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: blackColor,
  );
}

TextStyle myTextstyle16({Color blueColor = Colors.blue}) {
  return TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: blueColor,
  );
}

TextStyle myTextstyle20({Color redColor = Colors.red}) {
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: redColor,
  );
}

TextStyle myTextstyle25({Color orangeColor = Colors.orange}){
  return TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: orangeColor);
}