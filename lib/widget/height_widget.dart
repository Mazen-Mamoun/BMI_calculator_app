import 'package:flutter/material.dart';
import 'package:pro_test/constants.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({super.key, required this.height, this.onChanged});
  final double height;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: containnerColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Height",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.round().toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "CM",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Slider(
            thumbColor: Colors.red,
            activeColor: Colors.red,
            value: height,
            max: 220,
            min: 80,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
