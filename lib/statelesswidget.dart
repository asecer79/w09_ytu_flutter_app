import 'package:flutter/material.dart';

class StatelessWidgetPage extends StatelessWidget {
  StatelessWidgetPage({super.key});

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateless Widget")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counter value:", style: TextStyle(fontSize: 24)),
          Text(counter.toString(), style: TextStyle(fontSize: 24)),
          ElevatedButton(
              onPressed: () {
                counter++;
              },
              child: Text("Increase"))
        ],
      )),
    );
  }
}
