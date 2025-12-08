import 'package:flutter/material.dart';

class Screenseven extends StatelessWidget {
  const Screenseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenSeven'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Container(height: 100, width: 100, color: Colors.amberAccent),
                Container(height: 100, width: 100, color: Colors.lightBlue),
                Container(height: 100, width: 100, color: Colors.purple),
                Container(height: 100, width: 100, color: Colors.red),
                Container(height: 100, width: 100, color: Colors.red),
                Container(height: 100, width: 100, color: Colors.lightBlue),
                Container(height: 100, width: 100, color: Colors.amber),
              ],
            ),
          ),
          Expanded(
            child: Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.start,
              spacing: 10,
              runSpacing: 10,
              children: [
                Container(height: 100, width: 100, color: Colors.amberAccent),
                Container(height: 100, width: 100, color: Colors.lightBlue),
                Container(height: 100, width: 100, color: Colors.purple),
                Container(height: 100, width: 100, color: Colors.red),
                Container(height: 100, width: 100, color: Colors.red),
                Container(height: 100, width: 100, color: Colors.lightBlue),
                Container(height: 100, width: 100, color: Colors.amber),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
