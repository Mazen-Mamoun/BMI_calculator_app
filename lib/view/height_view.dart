import 'package:flutter/material.dart';
import 'package:pro_test/widget/height_widget.dart';

class HeightView extends StatelessWidget {
  const HeightView({super.key, required this.height, required this.onChanged});
  final double height;
  final Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: HeightWidget(
        height: height,
        onChanged: onChanged,
      ),
    );
  }
}
