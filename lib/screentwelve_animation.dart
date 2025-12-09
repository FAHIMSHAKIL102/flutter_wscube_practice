import 'package:flutter/material.dart';

class ScreentwelveAnimation extends StatefulWidget {
  const ScreentwelveAnimation({super.key});

  @override
  State<ScreentwelveAnimation> createState() => _ScreentwelveAnimationState();
}

class _ScreentwelveAnimationState extends State<ScreentwelveAnimation>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
    );
    animation = Tween(begin: 250.0, end: 10.0).animate(animationController);
    colorAnimation = ColorTween(
      begin: Colors.blueGrey,
      end: Colors.orange,
    ).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenTwelve'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
