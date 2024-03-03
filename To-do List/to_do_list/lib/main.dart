import 'package:flutter/material.dart';
import 'package:to_do_list/to-do%20list.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Todolist(),
    );
  }
}
