import 'package:flutter/material.dart';

class Screensix extends StatefulWidget {
  const Screensix({super.key});

  @override
  State<Screensix> createState() => _ScreensixState();
}

class _ScreensixState extends State<Screensix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ScreenSix'),backgroundColor: Colors.lightGreen,),
    );
  }
}