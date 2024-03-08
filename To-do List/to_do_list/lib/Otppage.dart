
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list/ForgotPassword.dart';
import 'package:to_do_list/ResetPassword.dart';



class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});
  
  @override
  State<StatefulWidget> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {

  int resendTime = 30;
  late Timer countDownTimer;

  @override
  void initState() {
    startTimer();
    super.initState();
  }
  startTimer() {
    countDownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        resendTime = resendTime-1;
      });
      if(resendTime < 1) {
        countDownTimer.cancel();
      }
     });
  }
  stopTimer() {
    if(countDownTimer.isActive) {
      countDownTimer.cancel();
    }
  }
  @override
  void dispose() {
    stopTimer(); // Call your method to cancel the timer
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              IconButton(
                padding: const EdgeInsets.only(
                  right: 25
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgotPassword()));
                }, 
                icon: const Icon(
                  Icons.arrow_back_sharp,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "OTP Verification",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Lexend",
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 100,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                   Text("Enter 4 Digits Code",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("Enter the 4 digits code that you",style: TextStyle(fontSize: 20,color: Colors.black38),),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("received on your email",style: TextStyle(fontSize: 20,color: Colors.black38),),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(flex: 3,),
                  SizedBox(
                    height: 58,
                    width: 54,
                    child: TextField(
                      onChanged: (value){
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blue.shade200
                          ),
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                    ),
                  ),
                  const Spacer(flex: 3,),
                  SizedBox(
                    height: 58,
                    width: 54,
                    child: TextField(
                      onChanged: (value){
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.black12
                          ),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          
                          borderSide: BorderSide(
                            
                            width: 2,
                            color: Colors.blue.shade200
                          ),
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                    ),
                  ),
                  const Spacer(flex: 3,),
                  SizedBox(
                    height: 58,
                    width: 54,
                    child: TextField(
                      onChanged: (value){
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blue.shade200
                          ),
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                    ),
                  ),
                  const Spacer(flex: 3,),
                  SizedBox(
                    height: 58,
                    width: 54,
                    child: TextField(
                      onChanged: (value){
                        if(value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.black12
                          ),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blue.shade200
                          ),
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                    ),
                  ),
                  const Spacer(flex: 3,),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
 
                  const Text(
                    "Haven’t gotten code yet?",
                    style: TextStyle(
                      fontFamily: "Sans Serif Collection",
                      fontSize: 15
                    ),
                  ),
                 
                  resendTime == 0 ? InkWell(
                    onTap: (){

                  },
                  
                  child: const Text(
                    "Resend-code",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                  ):
                  const SizedBox()
                ],
                
              ),
              const SizedBox(
                height: 10,
              ),
              
              resendTime != 0
              ? Text(
                
                "You can resend OTP after $resendTime seconds",
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: "Sans Serif Collection"
                ),
              ):const SizedBox(width: 10),
              const SizedBox(
                height: 80,
              ),
              Center(
                child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ResetPassword()));
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
                      child: const Text(
                        textAlign:TextAlign.center,
                        "Proceed",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        )
                      ),  
                    ),
              )
            ],
          ),
        ),
      )
    );
  }
} 