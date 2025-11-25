import 'package:flutter/material.dart';

class Screenthree extends StatelessWidget {
  const Screenthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ScreenThree'),backgroundColor: Colors.lightGreen,),
      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.blue,child: ListView.builder(itemBuilder: (context,index){
              return Column(
                children: [
                  Container(
                    height: 100,color: Colors.green,width: 100,
                  ),
                   Container(
                    height: 100,color: Colors.yellow,width: 100,
                  ),
                  
                ],
              );
            },itemCount: 5,),
          )),
          Expanded(child: Container(
            color: Colors.red,
          ))
        ],
      ),
    );
  }
}