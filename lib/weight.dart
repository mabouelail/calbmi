import 'package:calbmi/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customColumn.dart';
import 'height.dart';
double weight = 50;
class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}
class _Screen3State extends State<Screen3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomColumn(
          firstButtonText: 'Back',
          secondButtonText: 'Result',
          firstText: 'your weight is', variableVariable: weight,
          sliderMin: 1.0,
          sliderMax: 300.0,
          onPress: (double newValue) {
            setState(() {
              weight = newValue.round().toDouble();
            });
          },
          nextAction: (){
            calculateBmi(weight, height);
            Navigator.pushNamed(context, '/result');
          },
          backAction: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}