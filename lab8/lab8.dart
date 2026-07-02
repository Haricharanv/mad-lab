import 'package:flutter/material.dart';
void main() => runApp(MessageToggleApp());
class MessageToggleApp extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return MaterialApp(title: 'Message Toggle', home: MessageToggleHome());
  }
}
class MessageToggleHome extends StatefulWidget {
  @override _MessageToggleHomeState createState() => _MessageToggleHomeState();
}
class _MessageToggleHomeState extends State<MessageToggleHome> {
  bool _showHello = true;
  void _toggleMessage() { setState(() { _showHello = !_showHello; }); }
  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Message Toggle App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_showHello ? 'R V College of Engineering!' : 'Go Change the World!', style: TextStyle(fontSize: 32)),
            ElevatedButton(onPressed: _toggleMessage, child: Text('Toggle Message'))
          ]
        )
      )
    );
  }
}
