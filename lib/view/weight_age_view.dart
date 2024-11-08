import 'package:flutter/material.dart';
import 'package:pro_test/widget/weight_age_widget.dart';

class WeightAgeView extends StatelessWidget {
  const WeightAgeView(
      {super.key,
      required this.weight,
      required this.age,
      this.onIncreementWeight,
      this.onDecreementWeight,
      this.onIncreementAge,
      this.onDecreementAge});
  final int weight;
  final int age;
  final void Function()? onIncreementWeight;
  final void Function()? onDecreementWeight;
  final void Function()? onIncreementAge;
  final void Function()? onDecreementAge;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: WeightAgeWidget(
              num: weight,
              // age: age,
              text: "weight",
              onIncreement: onIncreementWeight,
              onDecreement: onDecreementWeight,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: WeightAgeWidget(
              num: age,
              // age: age,
              text: "age",
              onIncreement: onIncreementAge,
              onDecreement: onDecreementAge,
            ),
          ),
        ],
      ),
    );
  }
}
