import 'package:calbmi/weight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'gender.dart';
import 'age.dart';
import 'height.dart';
import 'weight.dart';
Map<Gender, String> gend = {
  Gender.male: 'Male',
  Gender.female: 'Female',
};
double bmi;
String category;
String bmii;
class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomText(content: 'RESULT', fontSize: 50.0,),
              CustomText(content: 'Gender: ${gend[selectedGender]}', fontSize: 20.0,),
              CustomText(content: 'Age: $age', fontSize: 20,),
              CustomText(content: 'Height: $height', fontSize: 20,),
              CustomText(content: 'Weight: $weight', fontSize: 20,),
              CustomText(content: 'BMI: $bmii', fontSize: 30.0,),
              CustomText(content: "Category: $category", fontSize: 30,),
            ],
          ),
        ),
      ),
    );
  }
}

void calculateBmi(double weight, double height) {
  height = height / 100.0;
  bmi = (weight / ((height * height)));
  bmii = double.parse(bmi.toString()).toStringAsFixed(2);
  if (bmi < 16) {
    category = 'Severe Thinness';
  } else if (bmi >= 16 && bmi < 17) {
    category = 'Moderate Thinness';
  } else if (bmi >= 17 && bmi < 18.5) {
    category = 'Mild Thinness';
  } else if (bmi >= 18.5 && bmi < 25) {
    category = 'Normal';
  } else if (bmi >= 25 && bmi < 30) {
    category = 'OverWeight';
  } else if (bmi >= 30 && bmi < 35) {
    category = 'Obese Class 1';
  } else if (bmi >= 35 && bmi < 40) {
    category = 'Obese Class 2';
  } else {
    category = 'Obese Class 3';
  }

}

class CustomText extends StatelessWidget {
  final String content;
  final double fontSize;
  CustomText({this.content, this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontSize: fontSize,
      ),
    );
  }
}

