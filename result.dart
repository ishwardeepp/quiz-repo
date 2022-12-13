// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //stating a "Result" class
  final int resultScore;
  final VoidCallback resethandler;

  Result(this.resultScore, this.resethandler); //defining a constructor

  String get resultPhrase {
    var resultText =
        "You love romanticism and the world around you, you love humanity, you love people :)";
    if (resultScore < 50 && resultScore >= 39) {
      resultText =
          "You love romanticism and the world around you, you love humanity, you love people :)";
    } else if (resultScore < 50 && resultScore >= 39) {
      resultText =
          "You are very considerate about peoples views and feelings :)";
    } else if (resultScore < 28) {
      resultText =
          "You the softer things in life yet you want to live in the moment :)";
    }
    return resultText;
  }
  //to get a response for your answers
  //here "get" is a getter
  /*a getter is a method used to retrieve a particular class field and save it 
    in a variable*/

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          //customising the response message
          TextButton(
            onPressed: resethandler,
            style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll<Color>(
                    Colors.brown.withOpacity(.2))),
            child: Text("Give it another go :)"),
          ),
          //giving a restart message and customising it
        ],
      ),
    );
  }
}
