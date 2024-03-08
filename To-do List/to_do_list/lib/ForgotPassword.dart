import 'package:flutter/material.dart';
import 'package:to_do_list/Otppage.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const  SizedBox(
                height: 120,
              ),
             const  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                   Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),  
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Enter your email for the verification process,",style: TextStyle(color: Colors.black45),),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("we will send 4 digit code to your email",style: TextStyle(color: Colors.black45),),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    Title(color: Colors.black, child: const Text(
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
                              decoration: InputDecoration(
                              hintText: 'Enter Email',
                              prefixIcon: const Icon(Icons.mail_outline_outlined),
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
                      height: 50,
                    ),
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const OtpVerification()));
                  },
              
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                  shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
             
                  ),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    
                    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 110.0), // Adjust the padding
                  
                  ),
                  child: const Text('Continue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),             
            ],
          ),
        ),
      ),
    );
  }
}