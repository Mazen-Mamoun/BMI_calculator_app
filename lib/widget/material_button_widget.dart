import 'package:flutter/material.dart';

class MaterialBusttonWidget extends StatelessWidget {
  const MaterialBusttonWidget(
      {super.key,
      required this.isMale,
      required this.weight,
      required this.height,
      required this.onPressed});
  final bool isMale;
  final int weight;
  final double height;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      height: 50,
      minWidth: double.infinity,
      color: Colors.red,
      onPressed: onPressed,
      child: const Text(
        "Calculator",
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}