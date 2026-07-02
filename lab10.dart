import 'package:flutter/material.dart';
void main() { runApp(MyApp()); }
class MyApp extends StatefulWidget {
  @override _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int counter = 0;
  void _increment() { setState(() { counter++; }); }
  void _decrement() { setState(() { counter--; }); }
  @override Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Program 10: Inc/Dec Counter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter: $counter", style: TextStyle(fontSize: 28)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: _increment, child: Text("Increment")),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: _decrement, child: Text("Decrement"))
                ]
              )
            ]
          )
        )
      )
    );
  }
}
