import 'package:flutter/material.dart';
import 'package:to_do_list/Login.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.white,

        body: Padding(
          
          
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://www.shutterstock.com/image-vector/two-steps-authentication-verification-code-600nw-1945825402.jpg",
                ),
                const Text("Enter new Passward",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo
                    
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
               TextField(
                controller: newPasswordController,
                  decoration: InputDecoration(
                  hintText: 'Enter new Passward',
                  prefixIcon: const Icon(Icons.password_sharp),
                  border: OutlineInputBorder(
                  borderSide: const  BorderSide(
                  color: Colors.black, 
                    ),
                        borderRadius: BorderRadius.circular(10.0), 
                        ),
                      contentPadding: const EdgeInsets.all(12.0
                    ), 
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Confirm new Passward",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo
                    
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
               TextField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                  hintText: 'Confirm new Passward',
                  prefixIcon: const Icon(Icons.password_sharp),
                  border: OutlineInputBorder(
                  borderSide: const  BorderSide(
                  color: Colors.black, 
                    ),
                        borderRadius: BorderRadius.circular(10.0), 
                        ),
                      contentPadding: const EdgeInsets.all(12.0
                    ), 
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
            
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
            
                    
                    ElevatedButton(
                    onPressed: () {
                      if(newPasswordController.text == confirmPasswordController.text) {
                        newPasswordController.clear();
                        confirmPasswordController.clear();
                        showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Password changed successfully'),
            
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                      
                      }else {
                          showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Password Mismatch'),
                        content: const Text('New password and confirm password do not match.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                      }
                  
                  },
              
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                   // Adjust the border radius
                  ),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 70.0), // Adjust the padding
                  
                  ),
                  child: const Text('Submit'),
                ),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                  },
              
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                   // Adjust the border radius
                  ),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0), // Adjust the padding
                  
                  ),
                  child: const Text('Go To Login Page'),
                ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}