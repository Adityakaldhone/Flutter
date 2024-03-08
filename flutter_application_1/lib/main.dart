import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/authentication/login.dart';
import 'package:flutter_application_1/src/taskbar/taskmain.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid? await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: 'AIzaSyDBlKqGwDrDxWMaMz9_8mpVKp3xuPjlU_U', 
    appId: '1:975572357571:android:5007e5961635afca6fad76', 
    messagingSenderId: '975572357571', 
    projectId: 'login-c84a5'
  )):await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
       builder: (context, snapshot) {

        if(snapshot.hasData){
          return const TaskMain();
        }else{
          return const LoginPage();
        } 
        
       }
       )
    
    );
  }
}
