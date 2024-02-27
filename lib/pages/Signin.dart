import 'package:flutter/material.dart';
import 'package:quizapp/pages/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF7f30fe), Color(0xFF6380fb)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 105))),
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 70)),
              Center(
                  child: Text(
                "SignIn",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Login into your Account",
                style: TextStyle(
                  color: Color.fromARGB(255, 209, 218, 223),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(child: Column(children: [

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Home()));
                  },
                  child: Icon(Icons.login))
              ]),),
            ],
          ),
        ]),
      ),
    );
  }
}
