import 'package:flutter/material.dart';

enum MovieCategory{
  comedy,horror,action,
}

Color colorCategory(String category){
  switch(category){
    case 'comedy':
      return Colors.deepOrange;
    case 'horror':
      return Colors.black;
    case 'action':
      return Colors.blue;
    default:
      return Colors.green;
  }
}