import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;

  // addValue() {
  //   setState(() {
  //     if (counter == 0) {
  //       counter++;
  //     } else {
  //       counter--;
  //     }
  //   });
  //   print(counter);
  // }

  bool isZero = true;

  changeVal() {
    setState(() {
      isZero = !isZero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(isZero ? "0" : "1", style: TextStyle(fontSize: 40)),
          ElevatedButton(
              onPressed: () {
                changeVal();
              },
              child: Text("Add Value"))
        ],
      )),
    );
  }
}
