import 'package:calculator/number_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const CalculatorApp(),
  );
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          title: const Text(
            "Calculator",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
        ),
        body: const CalculatorUI(),
      ),
    );
  }
}

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  num result = 0;
  num number = 0;
  String operation = '';
  num temp = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black87, width: 2.0),
            ),
            height: 150.0,
            width: double.infinity,
            child: Text(
              result.toStringAsFixed(2),
              style:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 48.0),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberButton(
                  number: "1",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "2",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "3",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "+",
                  onPress: (String op) {
                    temp = number;
                    operation = op;
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberButton(
                  number: "4",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "5",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "6",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "-",
                  onPress: (String op) {
                    temp = number;
                    operation = op;
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberButton(
                  number: "7",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "8",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "9",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "*",
                  onPress: (String op) {
                    temp = number;
                    operation = op;
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // NumberButton(
                //   number: ".",
                //   onPress: (String number) {
                //     print(number);
                //   },
                // ),
                NumberButton(
                  number: "0",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "/",
                  onPress: (String op) {
                    temp = number;
                    operation = op;
                  },
                ),
                NumberButton(
                  number: "=",
                  onPress: (_) {
                    switch (operation) {
                      case '+':
                        result = temp + number;
                        break;
                      case '-':
                        result = temp - number;
                        break;
                      case '*':
                        result = temp * number;
                        break;
                      case '/':
                        result = temp / number;
                        break;
                      default:
                        result = 0;
                    }
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
