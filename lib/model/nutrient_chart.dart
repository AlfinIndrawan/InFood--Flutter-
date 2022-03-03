import 'package:flutter/material.dart';

class NutrientChart {
  String name;
  String description;
  var carbs;
  var fat;
  var protein;
  var calories;
  String imageAsset;

  NutrientChart(
      {required this.name,
      required this.description,
      required this.carbs,
      required this.fat,
      required this.protein,
      required this.calories,
      required this.imageAsset});
}

var NutrientChartList = [
  NutrientChart(
      name: 'Fried Chicken',
      description: 'Fried Chicken leg 100gr',
      carbs: 0.8,
      fat: 6.7,
      protein: 13,
      calories: 120,
      imageAsset: 'images/fried_chicken.jpg'),
  NutrientChart(
      name: 'Fried Egg',
      description: '1 Fried egg (46gr)',
      carbs: 0.4,
      fat: 6.8,
      protein: 6.3,
      calories: 90,
      imageAsset: 'images/fried_egg.jpg'),
  NutrientChart(
      name: 'Fried Shrimp',
      description: 'Fried Shrimp 100gr',
      carbs: 21.6,
      fat: 18.4,
      protein: 12,
      calories: 304,
      imageAsset: 'images/fried_shrimp.jpg'),
  NutrientChart(
      name: 'Tempeh',
      description: 'Tempeh 100gr',
      carbs: 7.7,
      fat: 11.2,
      protein: 19.6,
      calories: 192.5,
      imageAsset: 'images/tempeh.jpg'),
  NutrientChart(
      name: 'Mung bean',
      description: 'Mung bean 100gr',
      carbs: 63,
      fat: 1.2,
      protein: 24,
      calories: 347,
      imageAsset: 'images/mung_bean.jpg'),
  NutrientChart(
      name: 'Roasted duck',
      description: '1 Drumstick and thigh ',
      carbs: 4.84,
      fat: 5.64,
      protein: 16.6,
      calories: 155.5,
      imageAsset: 'images/roasted_duck.jpg'),
  NutrientChart(
      name: 'Sardine',
      description: '100gr sardines in can',
      carbs: 0,
      fat: 11,
      protein: 25,
      calories: 208,
      imageAsset: 'images/sardine.jpg'),
  NutrientChart(
      name: 'Tenderloin Beef',
      description: 'Tenderloin beef 100gr',
      carbs: 0,
      fat: 24.5,
      protein: 23.3,
      calories: 320,
      imageAsset: 'images/tenderloin.jpg'),
  NutrientChart(
      name: 'Chicken Katsu',
      description: 'Chicken katsu 100gr',
      carbs: 15,
      fat: 11,
      protein: 12,
      calories: 210,
      imageAsset: 'images/chicken_katsu.jpg'),
];
