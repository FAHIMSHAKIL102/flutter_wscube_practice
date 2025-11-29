import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/component/mytext.dart';
import 'package:intl/intl.dart';

class Screenfive extends StatefulWidget {
  const Screenfive({super.key});

  @override
  State<Screenfive> createState() => _ScreenfiveState();
}

class _ScreenfiveState extends State<Screenfive> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(title: Text('ScreenFive'),backgroundColor: Colors.lightGreen,),
      body: Column(
        children: [
          Text(
            'Current Time ${time.year}-${time.month}-${time.day} ${time.hour}:${time.minute}:${time.second}',
            style: myTextstyle20(),
          ),
          Text(
            'Current Time ${DateFormat().format(time)}',
            style: myTextstyle20(),
          ),
          Text(
            'Current Time ${DateFormat('Hms').format(time)}',
            style: myTextstyle20(),
          ),
          Text(
            'Current Time ${DateFormat('yMMMMd').format(time)}',
            style: myTextstyle20(),
          ),
          Text(
            'Current Time ${DateFormat('yMMMMEEEEd').format(time)}',
            style: myTextstyle20(),
          ),
          Text(
            'Current Time ${DateFormat('QQQQ').format(time)}',
            style: myTextstyle20(),
          ),
          Text(
            'Current Time ${DateFormat('jms').format(time)}',
            style: myTextstyle20(),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text('Refresh'),
          ),
          Text('Select Date', style: myTextstyle20(redColor: Colors.green)),
          OutlinedButton(
            onPressed: () async {
              DateTime? datePicked = await showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(2400),
              );
              if (datePicked != null) {
                print('Picked Date $datePicked');
              }
            },
            child: Text('Show'),
          ),
          Text('Select Time', style: myTextstyle20(redColor: Colors.blue)),
          ElevatedButton(
            onPressed: () async {
              TimeOfDay? timePicked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input,
              );
              if (timePicked != null) {
                print('Selected Time $timePicked');
              }
            },
            child: Text("Show"),
          ),
        ],
      ),
    );
  }
}
