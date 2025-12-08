import 'dart:math';

import 'package:flutter/material.dart';

class ScreeneightAnimation extends StatefulWidget {
  const ScreeneightAnimation({super.key});

  @override
  State<ScreeneightAnimation> createState() => _ScreeneightAnimationState();
}

class _ScreeneightAnimationState extends State<ScreeneightAnimation> {
  var _height = 200.0;
  var _width = 100.0;
  Decoration myDecoration = BoxDecoration(
    color: Colors.cyan,
    borderRadius: BorderRadius.circular(0),
  );
  double myOpacity = 1.0;
  bool isFlag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenEight'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                height: _height,
                width: _width,
                decoration: myDecoration,
                curve: Curves.bounceInOut,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (isFlag) {
                  _height = 150;
                  _width = 250;
                  myDecoration = BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(50),
                  );
                  isFlag = false;
                } else {
                  _height = 200;
                  _width = 100;
                  myDecoration = BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(0),
                  );
                  isFlag = true;
                }
                setState(() {});
              },
              child: Text(
                'Animate',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            SizedBox(height: 20),
            AnimatedOpacity(
              opacity: myOpacity,
              duration: Duration(seconds: 2),
              child: Container(height: 200, width: 100, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (isFlag) {
                  myOpacity = 0.0;
                  isFlag = false;
                } else {
                  myOpacity = 1.0;
                  isFlag = true;
                }
                setState(() {});
              },
              child: Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}
