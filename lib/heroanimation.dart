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
      body: Column(
        children: [
          Hero(
            tag: 'background',
            child: Image(
              image: AssetImage('assets/images/ssd.png')
            ),
          ),SizedBox(height: 70),
          ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.elliptical(70, 50),bottomRight: Radius.circular(40)),
            child: Image(height: 300,
                image: AssetImage('assets/images/ssd.png')
              ),
          ),
        ],
      ),
    );
  }
}
