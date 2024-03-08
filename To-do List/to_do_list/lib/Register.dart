import 'package:flutter/material.dart';
import 'package:to_do_list/Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  void _checkCredentials() {
    if (_nameController.text == "" ||
        _mailController.text == "" ||
        _passwordController.text == "") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Please fill all the details'),
            actions: [
              // You can add buttons or other UI elements here
              TextButton(
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Registered Successfully'),
            actions: [
              // You can add buttons or other UI elements here
              TextButton(
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                },
                child: const Text('ok'),
              ),
            ],
          );
        },
      );
      _nameController.clear();
      _mailController.clear();
      _passwordController.clear();
    }
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(20),bottomRight: Radius.circular(20))),
        backgroundColor: Colors.white70,
        leading: GestureDetector(
          child: const Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Register to continue",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 17),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2,
                  ),

                  Container(
                    height: 55,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Colors
                          .white, // Set container color as per your design
                      borderRadius: BorderRadius.circular(
                          10), // Optional: Add border radius
                    ),
                    child: Center(
                      child: Image.network(
                        'https://www.websitemagazine.com/hubfs/Imported_Blog_Media/google-logo-icon-Jan-23-2023-02-20-41-3179-PM-1-1-1.png',
                        width:
                            45, // Set the width of the image as per your design
                        height:
                            45, // Set the height of the image as per your design
                      ),
                    ),
                  ),
                  //const SizedBox(width: 20,),
                  const Spacer(
                    flex: 2,
                  ),
                  SizedBox(
                    height: 55,
                    width: 65,
                    child: Image.network(
                      "https://e7.pngegg.com/pngimages/624/759/png-clipart-linkedin-computer-icons-logo-social-networking-service-facebook-miscellaneous-blue.png",
                      width:
                          30, // Set the width of the image as per your design
                      height:
                          30, // Set the height of the image as per your design
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  //const SizedBox(width: 20),
                  SizedBox(
                    height: 55,
                    width: 65,
                    child: Image.network(
                      "https://img.freepik.com/premium-vector/vinnytsia-ukraine-april-27-2023-popular-social-media-icon-instagram-vector-design_545793-1681.jpg?size=338&ext=jpg&ga=GA1.1.1448711260.1707177600&semt=ais",
                      width:
                          55, // Set the width of the image as per your design
                      height:
                          55, // Set the height of the image as per your design
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(
                      color: Colors.black,
                      child: const Text(
                        "or register with Email",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text(
                      "Full Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Full Name',
                  prefixIcon: const Icon(Icons.account_circle_outlined),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.all(12.0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text(
                      "Email Address",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: _mailController,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  prefixIcon: const Icon(Icons.mail_outline_rounded),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.all(12.0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  prefixIcon: const Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.all(12.0),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  _checkCredentials();
                },
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,

                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 110.0), // Adjust the padding
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the LoginPage
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  //Title(color: Colors.black, child: const Text("Register now",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.deepPurple),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
