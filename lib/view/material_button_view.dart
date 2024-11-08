import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pro_test/widget/material_button_widget.dart';
import 'package:pro_test/widget/result_widget.dart';

class MaterilaButtonView extends StatelessWidget {
  const MaterilaButtonView(
      {super.key,
      required this.isMale,
      required this.weight,
      required this.height,
      required this.age});
  final bool isMale;
  final int weight;
  final double height;
  final int age;
  @override
  Widget build(BuildContext context) {
    return MaterialBusttonWidget(
        isMale: isMale,
        weight: weight,
        height: height,
        onPressed: () {
          double result = weight / pow(height / 100, 2);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ResultWidget(
                    gender: isMale ? "Male" : "Female",
                    result: result,
                    age: age);
              },
            ),
          );
        });
  }
}
