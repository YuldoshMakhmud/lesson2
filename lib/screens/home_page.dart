import 'package:flutter/material.dart';
import 'package:lesson2/screens/widgets/home_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<List<Color>> listOfColors = [
    [Colors.red],
    [Colors.pink, Colors.orange],
    [Colors.grey, Colors.yellow, Colors.blueGrey],
    [Colors.blue, Colors.lightBlue, Colors.lightGreen, Colors.green],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for(List<Color> item in listOfColors)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(Color scndItem in item) HomeItem(color: scndItem)
              ],
            )
        ],
      )
    ),
    );
  }
}
