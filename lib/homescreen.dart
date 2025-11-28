import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/screenfive.dart';
import 'package:flutter_wscube_practice/screenfour.dart';
import 'package:flutter_wscube_practice/screenthree.dart';
import 'package:flutter_wscube_practice/screentwo.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        backgroundColor: Colors.lightGreen,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screentwo()),
              );
            },
            child: Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'This  is very long proccess',
              style: TextStyle(
                fontSize: 20,
                color: Colors.amber,
                backgroundColor: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                print('click TextButton');
              },
              onLongPress: () {
                print('longpress TextButton');
              },
              child: Text(
                'Click',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,

                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                print('click ElevatedButton');
              },
              onLongPress: () {
                print('longpress ElevatedButton');
              },
              child: Text(
                'Button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print('click OutlinedButton');
              },
              onLongPress: () {
                print('longpress OutlinedButton');
              },
              child: Text(
                'Outlined Button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screentwo()),
                );
              },
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                  ),
                  margin: EdgeInsets.all(10),
                  height: 35,
                  width: 120,
                  child: Center(
                    child: Text(
                      'ScreenTwo',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screenthree()),
                );
              },
              child: Card(
                elevation: 7,
                child: Text(
                  'ScreenThree',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screenfour()),
                );
              },
              child: Card(
                elevation: 7,
                child: Text(
                  'ScreenFour',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.lightBlue,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screenfive()),
                  );
                },
                child: Text(
                  'ScreenFive',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 35,
              width: 150,
              color: Colors.blue,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'FAHIM',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      'FAHIM',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      'FAHIM',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      'FAHIM',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      'FAHIM',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 200,
                    width: 100,
                    child: Image.asset('assets/images/ssd.png'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/ssd.png'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/ssd.png'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/ssd.png'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/ssd.png'),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 100,
              width: 100,
              child: Image(
                image: AssetImage('assets/images/ssd.png'),
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 100,
              width: 100,
              child: Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/057/068/323/small/single-fresh-red-strawberry-on-table-green-background-food-fruit-sweet-macro-juicy-plant-image-photo.jpg',
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 100,
              width: 100,
              child: InkWell(
                onTap: () {
                  print('Tap');
                },
                onDoubleTap: () {
                  print('Double Tap');
                },
                onLongPress: () {
                  print('Long Press');
                },
                child: Image(
                  image: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/057/068/323/small/single-fresh-red-strawberry-on-table-green-background-food-fruit-sweet-macro-juicy-plant-image-photo.jpg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 100,
              width: 100,
              child: InkWell(
                onTap: () {
                  print('Tap');
                },
                onDoubleTap: () {
                  print('Double Tap');
                },
                onLongPress: () {
                  print('Long Press');
                },
                child: Image(
                  image: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/057/068/323/small/single-fresh-red-strawberry-on-table-green-background-food-fruit-sweet-macro-juicy-plant-image-photo.jpg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 100,
              width: 100,
              child: InkWell(
                onTap: () {
                  print('Tap');
                },
                onDoubleTap: () {
                  print('Double Tap');
                },
                onLongPress: () {
                  print('Long Press');
                },
                child: Image(
                  image: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/057/068/323/small/single-fresh-red-strawberry-on-table-green-background-food-fruit-sweet-macro-juicy-plant-image-photo.jpg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 100,
              width: 100,
              child: InkWell(
                onTap: () {
                  print('Tap');
                },
                onDoubleTap: () {
                  print('Double Tap');
                },
                onLongPress: () {
                  print('Long Press');
                },
                child: Image(
                  image: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/057/068/323/small/single-fresh-red-strawberry-on-table-green-background-food-fruit-sweet-macro-juicy-plant-image-photo.jpg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 1,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.rotationZ(.1),
              height: 200,
              width: 200,
              color: Colors.blueGrey.shade200,
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
