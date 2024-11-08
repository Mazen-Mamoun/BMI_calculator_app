import 'package:flutter/material.dart';
import 'package:pro_test/constants.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({
    super.key,
    required this.num,
    required this.text,
    required this.onIncreement,
    required this.onDecreement,
  });
  final String text;
  final int num;
  final void Function()? onIncreement;
  final void Function()? onDecreement;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: containnerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 28),
          ),
          Text(
            num.toString(),
            style: const TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: onDecreement,
                heroTag: "$text-decrement",
                mini: true,
                child: const Icon(
                  Icons.remove,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: onIncreement,
                heroTag: "$text-increment",
                mini: true,
                child: const Icon(
                  Icons.add,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
