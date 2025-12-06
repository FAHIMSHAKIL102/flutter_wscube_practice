import 'package:flutter/material.dart';

Color orangeColor = Colors.orange;

TextStyle myTextstyle12({Color blackColor = Colors.black}) {
  return TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: blackColor,
  );
}

TextStyle myTextstyle16({Color blueColor = Colors.blue}) {
  return TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: blueColor,
  );
}

TextStyle myTextstyle20({Color redColor = Colors.red}) {
  return TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: redColor);
}

TextStyle myTextstyle25({Color orangeColor = Colors.orange}) {
  return TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: orangeColor,
  );
}

class PageButton extends StatelessWidget {
  final String buttonName;
  final Icon? icon;
  final Color? color;
  final VoidCallback callback;
  final Color? shadowColors;
  const PageButton({
    super.key,
    required this.buttonName,
    this.color,
    this.icon,
    required this.callback,
    this.shadowColors,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shadowColor: shadowColors,
      child: TextButton(
        onPressed: callback,
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  Text(
                    buttonName,
                    style: myTextstyle20(redColor: Colors.green),
                  ),
                ],
              )
            : Text(buttonName, style: myTextstyle20(redColor: Colors.green)),
      ),
    );
  }
}