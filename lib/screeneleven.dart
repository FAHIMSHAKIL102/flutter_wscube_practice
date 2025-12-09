import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/component/mytext.dart';

class Screeneleven extends StatelessWidget {
  Screeneleven({super.key});
  var nameslist = [
    'Fahim',
    'Shakil',
    'Shakib',
    'Shamin',
    'Sayem',
    'Sifat',
    'Sumit',
    'Sumon',
    'Shuvo',
  ];
  var profilelist = [
    {'name': 'Fahim', 'phone': '123456789', 'message': '2'},
    {'name': 'Shakil', 'phone': '123456789', 'message': '5'},
    {'name': 'Shakib', 'phone': '123456789', 'message': '7'},
    {'name': 'Shamin', 'phone': '123456789', 'message': '3'},
    {'name': 'Sayem', 'phone': '123456789', 'message': '1'},
    {'name': 'Sifat', 'phone': '123456789', 'message': '4'},
    {'name': 'Sumit', 'phone': '123456789', 'message': '6'},
    {'name': 'Sumon', 'phone': '123456789', 'message': '9'},
    {'name': 'Shuvo', 'phone': '123456789', 'message': '8'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenEleven'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: nameslist
                  .map(
                    (value) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              value,
                              style: myTextstyle16(blueColor: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Expanded(
            child: ListView(
              children: profilelist
                  .map(
                    (value) => ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text(value['name'].toString()),
                      subtitle: Text(value['phone'].toString()),
                      trailing: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(value['message'].toString()),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
