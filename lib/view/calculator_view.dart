import 'package:flutter/material.dart';
import 'package:pro_test/constants.dart';
import 'package:pro_test/view/gender_selection_view.dart';
import 'package:pro_test/view/height_view.dart';
import 'package:pro_test/view/material_button_view.dart';
import 'package:pro_test/view/weight_age_view.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  bool isMale = true;
  int weight = 50;
  int age = 20;
  double height = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primsryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: primsryColor,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GenderSelectionView(
              isMale: isMale,
              onTapMale: () {
                isMale = true;
                setState(() {});
              },
              onTapFemale: () {
                isMale = false;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            HeightView(
              height: height,
              onChanged: (value) {
                height = value;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            WeightAgeView(
              weight: weight,
              age: age,
              onIncreementWeight: () {
                weight++;
                setState(() {});
              },
              onDecreementWeight: () {
                weight--;
                setState(() {});
              },
              onIncreementAge: () {
                age++;
                setState(() {});
              },
              onDecreementAge: () {
                age--;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            MaterilaButtonView(
                isMale: isMale, weight: weight, height: height, age: age),
          ],
        ),
      ),
    );
  }
}
