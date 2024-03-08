/*
2. Create a screen that displays a container. The container must display an image.
Give a circular border only at the bottom of the container. Below the container
display the button with size:(width:250, height:70). The button must display
“Add to cart”. The color of the button must be purple. Both the container and
button must be in the center of the screen.
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
      home: Two(),
    );
  }
}

class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Daily flash"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          Container(
            height: 320,
            width: 320,
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle
            ),
            child: Image.asset("assets/shaun.jpg"),
          ),
          ElevatedButton(
            
            style: const ButtonStyle(
              
            ),
            onPressed: () {}, 
            
            child: const Text("Add to cart")),
            
        ],
      ),
    );
  }
}
