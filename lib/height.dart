import 'package:flutter/material.dart';
import 'customColumn.dart';

double height = 20.0;
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomColumn(firstText: 'your height is',variableVariable: height,
        firstButtonText: 'Back',
        secondButtonText: 'Next',
        sliderMin: 1.0,
        sliderMax: 250.0,
        onPress: (double newValue) {
          setState(() {
            height = newValue.round().toDouble();
          });
        },
          nextAction: (){
          Navigator.pushNamed(context, '/weight');
          },
          backAction: (){
          Navigator.pop(context);
          },
        )
      )
    );
  }
}
