import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/admin/addquiz.dart';
import 'package:quizapp/admin/admin_login.dart';
import 'package:quizapp/pages/Signin.dart';
import 'package:quizapp/pages/home.dart';
import 'package:quizapp/pages/question.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
      options: const FirebaseOptions(
      apiKey: "AIzaSyAxm8xq4jYXe4Pzu5Y9JLCsb9kD2vLIq9k",//  ==   current_key in google-services.json file
      appId: "1:120710088507:android:f8ae5bfa10b643661ed91e", // ==  mobilesdk_app_id  in google-services.json file
      messagingSenderId: "12071008850", // ==   project_number in google-services.json file
      projectId: "quizapp-1615d", // ==   project_id   in google-services.json file
      storageBucket: "quizapp-1615d.appspot.com",
      ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       
      home: Home()
    );
  }
}

 
