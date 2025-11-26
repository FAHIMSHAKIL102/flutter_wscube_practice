import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/component/mytext.dart';

class Screenthree extends StatelessWidget {
  const Screenthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenThree'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        child: Text('Shakil', style: myTextstyle16()),
                        maxRadius: 50,
                        backgroundImage: NetworkImage(
                          'https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-beach-free-image-after-sunset-sky-free-photo.jpeg?w=600&quality=80',
                        ),
                      ),
                      Container(
                        height: 100,
                        color: Colors.yellow,
                        width: 100,
                        child: Text('Fahim', style: myTextstyle12()),
                      ),
                    ],
                  );
                },
                itemCount: 5,
              ),
            ),
          ),
          Expanded(child: Container(color: Colors.red)),
        ],
      ),
    );
  }
}
