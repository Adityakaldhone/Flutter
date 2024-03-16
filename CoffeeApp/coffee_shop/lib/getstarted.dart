

import 'package:coffee_shop/login.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Opacity(
            opacity: 1.0,
            child: Image.asset(
              'assets/Onboarding.png',
               
               // Replace 'background_image.jpg' with your image path
              fit: BoxFit.cover,
            ),
          ),
          // Other widgets can be placed on top of the background image
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 8,),
                const Text("GoodCoffee\nGood Friends\nLet it blends", style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                const Text("The best grain, the finest roast,\n        the most powerful flavor.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),),
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  style:const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(286, 64)),
                    backgroundColor: MaterialStatePropertyAll(Color(0xff846046)),
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const LoginPage()),);
                  }, 
                  child: const Text("Get Started",style: TextStyle(color: Colors.white, fontSize: 25),)
                ),
                const Spacer(flex: 1,)
              ],
            ),
        ],
      ),
    );
  }
}