import 'dart:async';
import 'package:demo/main.dart';
import 'package:flutter/material.dart';


class Introd extends StatefulWidget{

  @override
  State<Introd> createState() => _IntrodState();
}

class _IntrodState extends State<Introd> {

@override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Calories Work'),
      ),
      );
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: RichText(text: TextSpan(
          style: TextStyle(
            color: Colors.white,
            fontSize: 21
          ),
          children: <TextSpan>[
            TextSpan(text: 'Hello '),
            TextSpan(text: 'Welcome to Cal Works', style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ))
          ]
        ))

        ),
      ),
    );
  }
}