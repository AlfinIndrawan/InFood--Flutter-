import 'dart:math';

import 'package:first_project_flutter/model/nutrient_chart.dart';
import 'package:flutter/material.dart';

var left_margin_text = EdgeInsets.only(left: 10);
var right_margin_text = EdgeInsets.only(right: 5);
var text_style = TextStyle(fontSize: 16);

var paddingWithBorder = const EdgeInsets.symmetric(vertical: 20.0);
var decorationBorder = const BoxDecoration(
  border: Border(
    bottom: BorderSide(
      width: 0.1,
      color: Color.fromARGB(104, 0, 0, 0),
    ),
  ),
);

class DetailScreen extends StatelessWidget {
  final NutrientChart list;

  DetailScreen({required this.list});
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(list.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment
                    .stretch, //this will give center text with text alignment
                children: <Widget>[
                  Container(
                    margin: left_margin_text,
                    child: Text(
                      list.name,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Staatliches',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Number of Serving',
                                style: TextStyle(fontSize: 18),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Text(
                                '1',
                                style: TextStyle(fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //! data nutrisi

            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  decoration: decorationBorder,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: left_margin_text,
                            child: Text(
                              'Nutrition Facts (USDA)',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: right_margin_text,
                            child: Text(
                              'Daily Values %',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  decoration: decorationBorder,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: left_margin_text,
                        child: Text(
                          "Calories ${list.calories}",
                          style: text_style,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  decoration: decorationBorder,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: left_margin_text,
                            child: Text(
                              "Protein ${list.protein}" + " g",
                              style: text_style,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: right_margin_text,
                            child: Text(
                              "${(list.protein / 50 * 100).round()}%",
                              style: text_style,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  decoration: decorationBorder,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: left_margin_text,
                            child: Text(
                              "Fat ${list.fat} g",
                              style: text_style,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: right_margin_text,
                            child: Text(
                              "${(list.fat / 24 * 100).round()}%",
                              style: text_style,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  decoration: decorationBorder,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: left_margin_text,
                            child: Text(
                              "Carbs ${list.carbs} g",
                              style: text_style,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: right_margin_text,
                            child: Text(
                              "${(list.carbs / 130 * 100).round()}%",
                              style: text_style,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //!data nutrisi selesai
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
