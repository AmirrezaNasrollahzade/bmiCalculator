// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/ButtonCalculate.dart';
import 'package:bmi_calculator/components/CardCustom.dart';
import 'package:bmi_calculator/components/SliderCustom.dart';
import 'package:bmi_calculator/components/WEIGHT_custom.dart';

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          //full Screen
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //row 1 => male and female
                Expanded(
                  flex: 2,
                  child: Row(
                    children: const [
                      CardCustom(
                        titleCard: 'MALE',
                        iconData: Icons.male,
                      ),
                      CardCustom(
                        titleCard: 'FEMALE',
                        iconData: Icons.female,
                      ),
                    ],
                  ),
                ),
                //row 2 => Slider
                const Expanded(flex: 4, child: SliderCustom()),
                //row 3 => WEIGHT add and remove button KGText
                Expanded(
                  flex: 3,
                  child: WEIGHT_Custom(),
                ),
                //row 4 => Button Calculate
                const Expanded(
                  flex: 2,
                  child: ButtonCalculate(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
