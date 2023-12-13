import 'package:calculator/number_button.dart';
import 'package:flutter/material.dart';

class DigitRowSet extends StatelessWidget {
  const DigitRowSet(
      {required this.first,
      required this.second,
      required this.third,
      required this.fourth,
      required this.onPress,
      super.key});

  final String first;
  final String second;
  final String third;
  final String fourth;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NumberButton(
            number: first,
            onPress: (String number) {
              onPress(number);
            },
          ),
          NumberButton(
            number: second,
            onPress: onPress,
          ),
          NumberButton(
            number: third,
            onPress: onPress,
          ),
          NumberButton(
            number: fourth,
            onPress: onPress,
          )
        ],
      ),
    );
  }
}
