// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback reference; //VoidCallback is a shorthand for void Function
  final String answerText;

  Answer(this.reference, this.answerText); //defining a constructor

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        /*elevated button is similar to text button but it offers a better UX 
          as it has a defined background*/
        style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll<Color>(Color.fromARGB(255, 96, 64, 54)),
          /*Material state properties represent values that depend on a 
                widget's material state*/
          foregroundColor: MaterialStatePropertyAll<Color>(
              Color.fromARGB(255, 213, 205, 177)),
        ),
        onPressed: reference,
        child: Text(answerText),
      ),
    );
  }
}
