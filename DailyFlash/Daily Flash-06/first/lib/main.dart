/*
Create a screen that displays an asset image of the food item at the top of the
Screen, below the image, display the name of the food item and below the name
give the description of the item. Add appropriate padding.
*/
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: one(),
    );
  }
}

class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily Flash", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/pizza.jpg"),
            const SizedBox(height: 20,),
            const Row(
              children: [
                Text("Pizza",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              ],
            ),
            const SizedBox(height: 20,),
            const Text("A large circle of flat bread backed with cheese, tomatoes, and vegetables spread on top",style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }
}
