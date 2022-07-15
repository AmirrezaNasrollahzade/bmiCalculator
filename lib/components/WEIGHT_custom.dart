// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors, must_be_immutable

import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/Data/ResultData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WEIGHT_Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(50),
        decoration: kDecorationBoxDefault,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'WEIGHT',
              style: kTextStyleInfo,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Provider.of<ResultData>(context, listen: false)
                        .removeWeight();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: kDecorationBoxDefault.copyWith(
                      color: Colors.white38,
                    ),
                    child: const Icon(Icons.remove),
                  ),
                ),
                Text(
                  '${Provider.of<ResultData>(context).weight} kg',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Provider.of<ResultData>(context, listen: false).addWeight();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration:
                        kDecorationBoxDefault.copyWith(color: Colors.white38),
                    child: const Icon(Icons.add),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
