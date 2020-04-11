import 'package:calbmi/customButton.dart';
import 'package:calbmi/main.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class CustomColumn extends StatelessWidget {
  final double sliderMin;
  final double sliderMax;
  final double variableVariable;
  final String firstText;
  final Function onPress;
  final Function nextAction;
  final Function backAction;
  final String firstButtonText;
  final String secondButtonText;
  CustomColumn({this.firstText, this.onPress, this.variableVariable, this.nextAction,
    this.firstButtonText,
    this.secondButtonText,
    this.backAction,
    this.sliderMin,
    this.sliderMax,});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          firstText,
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        Text(
          variableVariable.toInt().toString(),
          style: TextStyle(
            fontSize: 50.0,
          ),
        ),
        Slider(
          value: variableVariable,
          min: sliderMin,
          max: sliderMax,
          divisions: 100,
          onChanged: onPress,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CustomButton(content: firstButtonText, buttonColor: lightColor, textColor: darkColor,onPress: backAction),
            CustomButton(content: secondButtonText, buttonColor: lightColor, textColor: darkColor, onPress: nextAction,),
          ],
        ),

      ],

    );
  }
}
