import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({required this.number, required this.onPress, super.key});

  final String number;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress(number);
      },
      child: Container(
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(color: Colors.black87, width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          number,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 24.0),
        ),
      ),
    );
  }
}
