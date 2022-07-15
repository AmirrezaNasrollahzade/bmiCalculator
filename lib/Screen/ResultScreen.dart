// ignore_for_file: file_names
import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/Data/ResultData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'your BMI is : ${Provider.of<ResultData>(context).bmiResult}',
            style: kTextStyleInfo,
          ),
        ),
      ),
    );
  }
}
