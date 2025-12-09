import 'package:flutter/material.dart';
import 'dart:ui';

class ScreentwelveAnimation extends StatefulWidget {
  const ScreentwelveAnimation({super.key});

  @override
  State<ScreentwelveAnimation> createState() => _ScreentwelveAnimationState();
}

class _ScreentwelveAnimationState extends State<ScreentwelveAnimation>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation rippleAnimation;
  late Animation colorAnimation;
  late AnimationController animationController;
  var radiusList = [100.0, 150.0, 200.0, 250.0, 300.0];
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    animation = Tween(begin: 250.0, end: 10.0).animate(animationController);
    rippleAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    colorAnimation = ColorTween(
      begin: Colors.blueGrey,
      end: Colors.orange,
    ).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    //animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenTwelve'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: animation.value,
              width: animation.value,
              color: colorAnimation.value,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: radiusList
                  .map(
                    (radius) => Container(
                      height: radius * rippleAnimation.value,
                      width: radius * rippleAnimation.value,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withValues(
                          alpha: 1.0 - rippleAnimation.value,
                        ),
                      ),
                      child: Icon(Icons.add_call, color: Colors.white),
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              animationController.forward();
              setState(() {});
            },
            child: Text('Animate'),
          ),
        ],
      ),
    );
  }
}
