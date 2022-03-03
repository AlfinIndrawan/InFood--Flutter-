import 'package:first_project_flutter/detail_screen.dart';
import 'package:flutter/material.dart';
import 'model/nutrient_chart.dart';

var text_style = TextStyle(fontFamily: 'Staatliches', fontSize: 16);

// ,
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('InFood'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final NutrientChart list = NutrientChartList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(
                      list: list,
                    );
                  },
                ),
              );
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(list.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              list.name,
                              style: text_style,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(list.description)
                          ]),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: NutrientChartList.length,
      ),
    );
  }
}
