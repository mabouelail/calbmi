import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customColumn.dart';

double age = 50;
class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}
class _Screen1State extends State<Screen1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomColumn(
              firstButtonText: 'Back',
              secondButtonText: 'Next',
              sliderMin: 2.0,
              sliderMax: 120.0,
              firstText: 'your age is', variableVariable: age,
              onPress: (double newValue) {
                setState(() {
                  age = newValue.round().toDouble();
                });
              },
            nextAction: (){
                Navigator.pushNamed(context, '/height');
            },
              backAction: (){
                Navigator.pop(context);
                },
            ),
        ),
    );
  }
}