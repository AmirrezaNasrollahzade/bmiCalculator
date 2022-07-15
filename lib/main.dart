import 'package:bmi_calculator/Data/ResultData.dart';
import 'package:bmi_calculator/Screen/CalculateScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ResultData();
      },
      child: MaterialApp(
        title: 'BMI Calculator',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.purple.shade700,
          primarySwatch: Colors.blue,
        ),
        home: const CalculateScreen(),
      ),
    );
  }
}
