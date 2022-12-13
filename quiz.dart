// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  /*state is a datat/information used in app or here its better defined as a 
    current user input*/
  /*here we have used a StatelessWidget as here the state of the widget does 
    not need to change, it is only concerend with outputting data*/
  //they can only be re-rendered when their external data changes
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final answerQuest;

  Quiz(this.answerQuest, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      //column is an invisible layout widget
      children: [
        //children is a named argument of the column widget
        Question(questions[questionIndex]['questionText']),
        //here it accesses the quesions
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          /*map method executes a function on every element of the datatype
          that has been applied to it*/
          /*here it takes a function that runs on all the answers defined in
          "_questions" */

          var postext = answer['text'];
          //here postext is the answer displayed on the button
          return Answer(() => answerQuest(answer['score']), postext.toString());
          /*here we have called a fat arrow which takes two arguments which is
          the score and the answer*/
        }).toList()
        /*here we have convereted the the obtained map to a list and then 
        further used spread in order to get rid of the nested lists that we
        obtained  */
      ],
    );
  }
}
