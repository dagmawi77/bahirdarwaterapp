
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
calculateGrowthPercentage(int previousData, int newData) {
  var growthPercentage =  (newData / previousData) * 100;
  return growthPercentage.isInfinite || growthPercentage.isNaN  ? 0.0 : growthPercentage;
}
Icon showGrowthIcon(int currentData, int previousData) {
  Icon icon;
  if(currentData > previousData) {
    icon = Icon(EvaIcons.arrowUp, color: Colors.red,);
  } else {
    icon = Icon(EvaIcons.arrowDown, color: Colors.red,);
  }
  return icon;
}
Color showGrowthColor(int currentData, int previousData) {
  Color color;
  if(currentData > previousData) {
    color = Colors.green;
  } else {
    color = Colors.red;
  }
  return color;
}