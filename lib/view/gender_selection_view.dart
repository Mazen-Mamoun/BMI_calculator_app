import 'package:flutter/material.dart';
import 'package:pro_test/constants.dart';
import 'package:pro_test/widget/gender_selection_widget.dart';

class GenderSelectionView extends StatelessWidget {
  const GenderSelectionView(
      {super.key,
      required this.isMale,
      required this.onTapMale,
      required this.onTapFemale});
  final bool isMale;
  final void Function()? onTapMale;
  final void Function()? onTapFemale;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GenderSelectionWidget(
              text: "Male",
              icon: Icons.male,
              isMale: isMale,
              onTap: onTapMale,
              color: isMale ? Colors.red : containnerColor,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: GenderSelectionWidget(
              text: "Female",
              icon: Icons.female,
              isMale: isMale,
              onTap: onTapFemale,
              color: !isMale ? Colors.red : containnerColor,
            ),
          ),
        ],
      ),
    );
  }
}
