import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/heroanimation.dart';

class ScreeneightAnimation extends StatefulWidget {
  const ScreeneightAnimation({super.key});

  @override
  State<ScreeneightAnimation> createState() => _ScreeneightAnimationState();
}

class _ScreeneightAnimationState extends State<ScreeneightAnimation> {
  var _height = 200.0;
  var _width = 100.0;
  Decoration myDecoration = BoxDecoration(
    color: Colors.cyan,
    borderRadius: BorderRadius.circular(0),
  );
  double myOpacity = 1.0;
  bool isFlag = true;
  bool isVisiable = true;
  bool isFirst = true;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => reload());
  }

  void reload() {
    isFirst = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenEight'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    height: _height,
                    width: _width,
                    decoration: myDecoration,
                    curve: Curves.bounceInOut,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (isFlag) {
                      _height = 150;
                      _width = 250;
                      myDecoration = BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(50),
                      );
                      isFlag = false;
                    } else {
                      _height = 200;
                      _width = 100;
                      myDecoration = BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(0),
                      );
                      isFlag = true;
                    }
                    setState(() {});
                  },
                  child: Text(
                    'Animate',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
                SizedBox(height: 10),
                AnimatedOpacity(
                  opacity: myOpacity,
                  duration: Duration(seconds: 2),
                  child: Container(height: 200, width: 100, color: Colors.grey),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (isVisiable) {
                      myOpacity = 0.0;
                      isVisiable = false;
                    } else {
                      myOpacity = 1.0;
                      isVisiable = true;
                    }
                    setState(() {});
                  },
                  child: Text('Animate'),
                ),
                AnimatedCrossFade(
                  firstChild: Container(
                    height: 150,
                    width: 150,
                    color: Colors.orangeAccent,
                  ),
                  secondChild: Image(
                    height: 250,
                    width: 220,
                    image: NetworkImage(
                      'https://scontent.fzyl7-1.fna.fbcdn.net/v/t39.30808-1/409543739_3581708042096611_1241447858689791528_n.jpg?stp=dst-jpg_p160x160_tt6&_nc_cat=104&ccb=1-7&_nc_sid=e99d92&_nc_ohc=aGqJeyH3ga8Q7kNvwFSZME0&_nc_oc=AdkA3ORF6DuB5e4ny-fIibAC8pOGPq7F57czGKUMbEHxWRsQ_CfVOCvHrmRCHrr-5fM&_nc_zt=24&_nc_ht=scontent.fzyl7-1.fna&_nc_gid=Eww3xaCRKHZsR6NWN664zw&oh=00_AfmG4dsjogCMGlp0QaiPuIi7WB3TUm5ZbdrK4mEza9tNBA&oe=6938585D',
                    ),
                  ),
                  crossFadeState: isFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(seconds: 2),
                  reverseDuration: Duration(seconds: 2),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (isFirst) {
                      isFirst = false;
                    } else {
                      isFirst = true;
                    }
                    setState(() {});
                  },
                  child: Text('Animate'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Heroanimation();
                        },
                      ),
                    );
                  },
                  child: Hero(
                    tag: 'background',
                    child: Image(
                      height: 250,
                      width: 220,
                      image: AssetImage('assets/images/ssd.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
