import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/homescreen.dart';
import 'package:flutter_wscube_practice/screenfour.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProfile extends StatefulWidget {
  const LoginProfile({super.key});

  @override
  State<LoginProfile> createState() => _LoginProfileState();
}

class _LoginProfileState extends State<LoginProfile> {
  String email = '', password = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  void loaddata() async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    email = sharedPreference.getString('email') ?? 'No Email';
    password = sharedPreference.getString('password') ?? 'No password';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginProfile'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Text('Email: $email'),
          Text('Password: $password'),
          ElevatedButton(
            onPressed: () async{
              SharedPreferences sharePreference=await SharedPreferences.getInstance();
              sharePreference.clear();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screenfour()),
              );
            },
            child: Text('LogOut'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homescreen()),
              );
            },
            child: Text('HomeScreen'),
          ),
        ],
      ),
    );
  }
}
