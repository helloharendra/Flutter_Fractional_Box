import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FractionalBox',
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const Text("Fractional Box"),
        ),
        body: const MyStatelessClass(),
      )),
    );
  }
}

class MyStatelessClass extends StatelessWidget {
  const MyStatelessClass({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FractionallySizedBox(
        widthFactor: 0.5,
        heightFactor: 0.5,
        alignment: FractionalOffset.center,
        child: DecoratedBox(
            decoration: BoxDecoration(
                border: Border.all(
          color: Colors.red,
          width: 4,
        ))),
      ),
    );
  }
}
