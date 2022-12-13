// ignore_for_file: prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questionText;

  Question(this.questionText); //defining a constructor
  /*a constructor is a part of the class structure and it is responsible for 
  allocating memory for objects*/

  @override
  /*this helps as a pointer in telling flutter about the certain variable we 
  are targeting*/
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        /*double.infinity ensures that the container will have the largest 
          possible width*/
        margin: EdgeInsets.all(10),
        /*EdgeInsets specifies offsets in terms of visual edges, here in all
           directions */
        padding: EdgeInsets.all(12),
        child: Text(questionText as String,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            selectionColor: Color.fromARGB(255, 96, 64, 54)));
    /*the following is customisations added to the question asked to 
              the user*/
  }
}
