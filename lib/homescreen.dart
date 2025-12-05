import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/component/mytext.dart';
import 'package:flutter_wscube_practice/screenfive.dart';
import 'package:flutter_wscube_practice/screenfour.dart';
import 'package:flutter_wscube_practice/screenseven.dart';
import 'package:flutter_wscube_practice/screensix.dart';
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
              style: ElevatedButton.styleFrom(),
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
            Card(
              elevation: 7,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screenthree()),
                  );
                },
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
            Card(
              elevation: 7,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screenfour()),
                  );
                },
                child: Text(
                  'ScreenFour ',
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
                  'ScreenFive ',
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
              elevation: 7,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screensix()),
                  );
                },
                child: Text(
                  'ScreenSix  ',
                  style: myTextstyle20(redColor: Colors.green),
                ),
              ),
            ),
            PageButton(
              buttonName: 'Screenseven',
              shadowColors: Colors.red,
              callback: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screenseven()),
              ),
            ),
            // PageButton(buttonName: 'Screenseven'),
            // PageButton(buttonName: 'Screenseven'),
            // PageButton(buttonName: 'Screenseven'),
            SizedBox(height: 25),
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
                    'https://scontent.fzyl7-1.fna.fbcdn.net/v/t39.30808-1/409543739_3581708042096611_1241447858689791528_n.jpg?stp=dst-jpg_p160x160_tt6&_nc_cat=104&ccb=1-7&_nc_sid=e99d92&_nc_ohc=aGqJeyH3ga8Q7kNvwFSZME0&_nc_oc=AdkA3ORF6DuB5e4ny-fIibAC8pOGPq7F57czGKUMbEHxWRsQ_CfVOCvHrmRCHrr-5fM&_nc_zt=24&_nc_ht=scontent.fzyl7-1.fna&_nc_gid=Eww3xaCRKHZsR6NWN664zw&oh=00_AfmG4dsjogCMGlp0QaiPuIi7WB3TUm5ZbdrK4mEza9tNBA&oe=6938585D',
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
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 250,
                maxWidth: 250,
                minHeight: 150,
                minWidth: 150,
              ),
              child: Container(
                transform: Matrix4.rotationZ(.1),
                height: 200,
                width: 200,
                color: Colors.blueGrey.shade200,
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
