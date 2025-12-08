import 'package:flutter/material.dart';

class Screennine extends StatelessWidget {
  Screennine({super.key});
  var myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenNine'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListWheelScrollView(
        itemExtent: 100,
        children: myList
            .map(
              (value) => Container(
                width: 300,
                color: Colors.brown,
                child: Center(
                  child: Text('$value', style: TextStyle(color: Colors.white)),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
