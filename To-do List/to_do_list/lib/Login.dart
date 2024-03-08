import 'package:flutter/material.dart';
import 'package:to_do_list/ForgotPassword.dart';
import 'package:to_do_list/Register.dart';
import 'package:to_do_list/to-do%20list.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    String mail = _emailController.text.trim();
    String pass = _passwordController.text.trim();

    bool validateEmail(String email) {
      // Simple email validation using a regular expression
      // You can use a more sophisticated email validation library if needed
      final emailRegex =
          RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
      return emailRegex.hasMatch(email);
    }

    bool ret = validateEmail(mail);

    if (ret == false) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Email or Password you entered is wrong '),
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
    } else if (mail == "" || pass == "") {
      if (mail == "" && pass == "") {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Please Enter valid Email and Password'),
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
      } else if (mail == "") {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Please Enter valid email'),
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
      } else if (pass == "") {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Please Enter valid password'),
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
      }
      //   }else {
      //     try {
      //     UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      //       email: _emailController.text,
      //       password: _passwordController.text,
      //     );
      //     if (kDebugMode) {
      //       print("User logged in: ${userCredential.user!.uid}");
      //     }
      //   }  on FirebaseAuthException catch (e) {
      //   // Handle FirebaseAuthException

      //   // Show error message to the user using a SnackBar
      //   // ignore: use_build_context_synchronously
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(
      //       content: Text(e.message ?? 'Authentication failed'),
      //       duration: const Duration(seconds: 3),
      //     ),
      //   );
      // } catch (e) {
      //   // Handle other exceptions

      //   // Show a generic error message to the user using a SnackBar
      //     // ignore: use_build_context_synchronously
      //     ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(
      //       content: Text('An error occurred. Please try again.'),
      //       duration: Duration(seconds: 3),
      //     ),
      //   );
      // }
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const Todolist()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // const SizedBox(
              //   height: 30,
              // ),
              Image.asset(
                height: 200,
                width: 200,
                "assets/photos/login2.webp"
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(
                      color: Colors.black,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromRGBO(49, 39, 79, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 45),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(
                      color: Colors.black,
                      child: const Text(
                        "Please Login to your account",
                        style: TextStyle(
                            color: Color.fromRGBO(49, 39, 79, 1),
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            fontStyle: FontStyle.italic),
                      )),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 3,
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
                    flex: 1,
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
                    flex: 1,
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
                    flex: 3,
                  )
                ],
              ),

              //const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text("or login with Email"),
                  ),
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
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  prefixIcon: const Icon(Icons.mail_rounded),
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
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    GestureDetector(
                      onTap: () {
                    // Navigate to the Register page
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassword(),
                      ),
                    );
                  },
                  child: const Text(
                    'ForgotPassword?',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                   ),
                  //Title(color: Colors.deepPurple, child: const Text("ForgotPassword?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.deepPurple),),),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  _login();
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
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the ForgotPasswordPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      );
                    },
                    child: const Text(
                      'Register now',
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
