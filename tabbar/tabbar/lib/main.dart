import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScrollableContainer(),
    );
  }
}

class MyScrollableContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable Container Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Non-scrollable content goes here
          Container(
            color: Colors.blue,
            height: 100, // Set the height at which scrolling begins
            child: Center(
              child: Text('Non-scrollable Content'),
            ),
          ),
          // Scrollable content goes here
          Expanded(
            child: ListView(
              children: [
                // Your scrollable content goes here
                ListTile(title: Text('Scrollable Content 1')),
                ListTile(title: Text('Scrollable Content 2')),
                ListTile(title: Text('Scrollable Content 3')),
                // Add more widgets as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
