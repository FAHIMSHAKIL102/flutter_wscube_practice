import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/component/mytext.dart';
import 'package:flutter_wscube_practice/screenfour.dart';

class Screenthree extends StatelessWidget {
  const Screenthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenThree'),
        backgroundColor: Colors.lightGreen,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screenfour()),
              );
            },
            child: Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: NetworkImage(
                        'https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-beach-free-image-after-sunset-sky-free-photo.jpeg?w=600&quality=80',
                      ),
                      child: Text('Shakil', style: myTextstyle16()),
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
              itemCount: 15,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 200,width: 200,
                      child: Stack(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            color: Colors.lime,
                            child: Text('Fahim'),
                          ),
                          Positioned(top: 25,left: 25,
                            child: Container(
                              height: 150,
                              width: 150,
                              color: Colors.grey,
                              child: Text(
                                'Shakil',
                                style: myTextstyle25(orangeColor: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
