import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Fltter')),
        body: Column(
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
                print('click TextButton');
              },
              onLongPress: () {
                print('longpress TextButton');
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
                print('click TextButton');
              },
              onLongPress: () {
                print('longpress TextButton');
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
          ],
        ),
      ),
    );
  }
}
