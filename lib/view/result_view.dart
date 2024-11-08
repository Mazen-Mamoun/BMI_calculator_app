import 'package:flutter/material.dart';
import 'package:pro_test/widget/result_widget.dart';

class ResultView extends StatelessWidget {
  const ResultView(
      {super.key,
      required this.isMale,
      required this.result,
      required this.age});
  final bool isMale;
  final double result;
  final int age;
  @override
  Widget build(BuildContext context) {
    return ResultWidget(
        gender: isMale ? "Male" : "Female", result: result, age: age);
  }
}
