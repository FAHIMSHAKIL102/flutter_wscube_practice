import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/screenseven.dart';

class Screensix extends StatefulWidget {
  const Screensix({super.key});

  @override
  State<Screensix> createState() => _ScreensixState();
}

class _ScreensixState extends State<Screensix> {
  @override
  Widget build(BuildContext context) {
    List nameList = [
      'Fahim',
      'Shakil',
      'Shakib',
      'Shamin',
      'Sayem',
      'Sifat',
      'Sanjid',
      'Safat',
    ];
    List colorList = [
      Colors.purple,
      Colors.blue,
      Colors.lightBlue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.red,
      Colors.black,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenSix'),
        backgroundColor: Colors.lightGreen,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screenseven()),
              );
            },
            icon: Icon(Icons.arrow_circle_right,size: 40,color: Colors.white,),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                Container(color: colorList[0], child: Text(nameList[1])),
                Container(color: colorList[1], child: Text(nameList[2])),
                Container(color: colorList[2], child: Text(nameList[3])),
                Container(color: colorList[3], child: Text(nameList[4])),
                Container(color: colorList[4], child: Text(nameList[5])),
                Container(color: colorList[5], child: Text(nameList[6])),
                Container(color: colorList[6], child: Text(nameList[0])),
                Container(color: colorList[7], child: Text(nameList[7])),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 150,
              children: [
                Container(color: colorList[0], child: Text(nameList[1])),
                Container(color: colorList[1], child: Text(nameList[2])),
                Container(color: colorList[2], child: Text(nameList[3])),
                Container(color: colorList[3], child: Text(nameList[4])),
                Container(color: colorList[4], child: Text(nameList[5])),
                Container(color: colorList[5], child: Text(nameList[6])),
                Container(color: colorList[6], child: Text(nameList[0])),
                Container(color: colorList[7], child: Text(nameList[7])),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  color: colorList[index],
                  child: Text(nameList[index]),
                );
              },
              itemCount: nameList.length,
            ),
          ),
        ],
      ),
    );
  }
}
