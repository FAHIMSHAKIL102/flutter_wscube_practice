import 'package:flutter/material.dart';

class Heroanimation extends StatelessWidget {
  const Heroanimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Hero(
          tag: 'background',
          child: Image(
            image: AssetImage('assets/images/ssd.png')
          ),
        ),
      ),
    );
  }
}
