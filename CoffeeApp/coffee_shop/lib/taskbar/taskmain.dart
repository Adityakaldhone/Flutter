import 'package:coffee_shop/add_to_cart.dart';
import 'package:coffee_shop/cartScreen.dart';
import 'package:coffee_shop/home_screen.dart';
import 'package:coffee_shop/login.dart';
import 'package:coffee_shop/taskbar/taskbar.dart';
import 'package:flutter/material.dart';

class TaskMain extends StatefulWidget {
  static const title = 'bottom_bar';

  const TaskMain({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TaskMain> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: TaskMain.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
       
        body: _buildPage(_currentIndex),
        bottomNavigationBar: BottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() {
            _currentIndex = i;
          }),
          items: [
            /// Home
            BottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            BottomBarItem(
              icon: const Icon(Icons.favorite_border),
              title: const Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            BottomBarItem(
              icon: const Icon(Icons.shopping_cart_outlined),
              title: const Text("Add to cart"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            BottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
   Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return const  Home();
      case 2:
        return  const AddToCart();
      case 3:
        return const Home();
      default:
        return Container(); // Empty container for unsupported index
    }
  }
}
