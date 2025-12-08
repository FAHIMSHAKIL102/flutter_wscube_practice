import 'package:flutter/material.dart';
import 'package:flutter_wscube_practice/component/mytext.dart';

class BmiCalculatescreen extends StatefulWidget {
  const BmiCalculatescreen({super.key});

  @override
  State<BmiCalculatescreen> createState() => _BmiCalculatescreenState();
}

class _BmiCalculatescreenState extends State<BmiCalculatescreen> {
  var wtController = TextEditingController();
  var fhtController = TextEditingController();
  var ihtController = TextEditingController();
  var result = 'Result';
  Color resultColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI'), backgroundColor: Colors.lightGreen),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('BMI', style: myTextstyle25()),
              TextField(
                controller: wtController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Enter your Weight',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: fhtController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Enter your Height(in Feet)',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: ihtController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Enter your Height(in Inch)',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  var wt = wtController.text.toString();
                  var fht = fhtController.text.toString();
                  var iht = ihtController.text.toString();
                  if (wt != '' && fht != '' && iht != '') {
                    var intwt = int.parse(wt);
                    var intfht = int.parse(fht);
                    var intiht = int.parse(iht);
                    var totalinch = (intfht * 12) + intiht;
                    var totalmeter = (totalinch * 2.54) / 100;
                    var bmi = intwt / (totalmeter * totalmeter);
                    var message = '';
                    if (bmi > 24) {resultColor=Colors.red;
                      message = 'You are OverWeight ';
                    } else if (bmi < 18) {
                      resultColor = Colors.blue;
                      message= 'You are UnderWeight';
                    } else {
                      resultColor=Colors.green;
                      message='You are Healthy';
                    }
                    
                    result = '$message \n Your BMi ${bmi.toStringAsFixed(3)}';
                    setState(() {});
                  } else {resultColor=Colors.red;
                    setState(() {
                      result = 'Please fillup the blanks';
                    });
                  }
                },
                child: Text('Calculate'),
              ),
              SizedBox(height: 20),
              Text(
                result,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: resultColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
