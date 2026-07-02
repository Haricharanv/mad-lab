import 'package:flutter/material.dart';
void main() { runApp(MyApp()); }
class MyApp extends StatefulWidget {
  @override _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int counter = 0;
  void _incrementCounter() { setState(() { counter++; }); }
  @override Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Program 7: Counter Program")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter: $counter", style: TextStyle(fontSize: 28)),
              ElevatedButton(onPressed: _incrementCounter, child: Text("Increment"))
            ]
          )
        )
      )
    );
  }
}
