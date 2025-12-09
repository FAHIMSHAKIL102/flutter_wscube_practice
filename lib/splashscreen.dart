import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/homescreen.dart';
import 'package:flutter_wscube_practice/login_profile.dart';
import 'package:flutter_wscube_practice/screenfour.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    loggedin();
  }

  void loggedin() async {
    SharedPreferences sharePreference = await SharedPreferences.getInstance();
    bool isloggedIn = sharePreference.getBool('islogin') ?? false;
    Timer(Duration(seconds: 1), () {
      if (isloggedIn) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginProfile()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Screenfour()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.lightBlue);
  }
}
