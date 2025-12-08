import 'package:flutter/material.dart';

class Screenten extends StatelessWidget {
  const Screenten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenTen'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.green.shade500,
                    Colors.blue.shade700,
                    Colors.red,
                  ],
                  // begin: FractionalOffset(0.0, 0.1,),
                  // end: FractionalOffset(1.0, 1.1),
                  // stops: [1.0, 1.0,0.9],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.green.shade200, Colors.blue.shade300],
                  center: Alignment.topLeft,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
