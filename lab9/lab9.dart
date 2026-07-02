import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Gesture Detector Demo')),
        body: Center(
          child: GestureDetector(
            onDoubleTap: () => print("Double Tapped!"),
            onPanUpdate: (details) => print("Swiped!"),
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: Text("Double tap or swipe me", style: TextStyle(color: Colors.white))
            )
          )
        )
      )
    );
  }
}
