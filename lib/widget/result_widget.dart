import 'package:flutter/material.dart';
import 'package:pro_test/constants.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget(
      {super.key,
      required this.gender,
      required this.result,
      required this.age});
  final String gender;
  final double result;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "BMI Result",
        ),
        backgroundColor: primsryColor,
      ),
      backgroundColor: primsryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender: $gender",
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Result: ${result.round()}",
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Age: $age",
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
