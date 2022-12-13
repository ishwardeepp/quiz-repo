// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());
//=> is a shorthand for executing functions which only have one expression

class MyApp extends StatefulWidget {
  /*here extends is a way to use inheritance i.e here our base class MyApp
    is based on the host class here which is StatefulWidget, here our class 
    has all the features of the base class and some new features*/
  /*here with the StatefulWidget the user interface changes whenever the 
    internal or the external data of the widget changes*/
  //for ex: external data is data provided to the widget via constructor
  @override
  /*override extracts a warning from the compiler if the annotated method 
    doesn't actually override anything*/
  State<StatefulWidget> createState() {
    //create state is a method returns a state object
    return _MyAppState();
  }
}

/*reason for having two classes is when data is passed through the original 
  class, its state is re-written or re created in order to store data and 
  keep the state persistent, we define another class*/

class _MyAppState extends State<MyApp> {
  //
  static const _questions = [
    //here we have added static as
    {
      "questionText": 'What is your favourite colour from the following?',
      'answers': [
        {'text': 'Black', 'score': 3},
        {'text': 'Brown', 'score': 7},
        {'text': 'Perwinkle', 'score': 10},
        {'text': 'Pastel Green', 'score': 8}
      ]
    },
    {
      "questionText": 'What is your favourite movie from the following?',
      'answers': [
        {'text': 'Jab We Met', 'score': 10},
        {'text': 'Uncle Frank', 'score': 5},
        {'text': 'Grown Ups', 'score': 3},
        {'text': 'The Eternal Sunshine Of a Spotless Mind', 'score': 7}
      ]
    },
    {
      "questionText": 'What is your favourite quote from the following?',
      'answers': [
        {
          'text':
              'If you had loved something, wouldnt a bit of it always linger',
          'score': 8
        },
        {'text': 'We accept love we think we deserve', 'score': 7},
        {'text': 'I am a mosiac of everyone i have ever met', 'score': 10},
        {'text': 'Love is stored in food', 'score': 9}
      ]
    },
    {
      "questionText": 'What is your favourite beverage from the following?',
      'answers': [
        {'text': 'Tea', 'score': 10},
        {'text': 'Coffee', 'score': 9},
        {'text': 'Any Cold Drink', 'score': 5},
        {'text': 'Plain Soda(Why?)', 'score': 2}
      ]
    },
    {
      "questionText":
          'What is your favourite time of the day from the following?',
      'answers': [
        {'text': 'Dawn', 'score': 6},
        {'text': 'Dusk', 'score': 8},
        {'text': 'Midnight', 'score': 10},
        {'text': 'Noon', 'score': 5}
      ]
    },
    {
      "questionText": 'What is your favourite season from the following?',
      'answers': [
        {'text': 'Autumn', 'score': 10},
        {'text': 'Winter', 'score': 8},
        {'text': 'Spring', 'score': 7},
        {'text': 'Summer', 'score': 6}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      /*setState is a method notifies flutter that the internal state of this 
      object has changed in a way that might impact the user interface */
      /*it forces flutter to call the build method again which rebuilds the 
      widget tree, avoiding flutter to re-render the entire UI again*/
      _questionIndex = 0;
      _totalScore = 0;
    });
  } //code in order to reset the quiz

  void _answerQuest(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    /*here widget is a class, build is a function, buildcontext is a class 
      and context is an object defined in material.dart*/
    return MaterialApp(
      /*material app helps in rendering the combination of widgets into 
        a working app*/
      home: Scaffold(
          /*home is a core widget brought onto the screen when the code is 
          rendered*/
          //scaffold creates a base page design and structure for the app UI
          appBar: AppBar(
            //appBar is the top bar that appears at the head of the application
            /*AppBar is a class that helps us customise the elements of the 
              app bar for a better UI*/
            title: Text("Your Personality Quiz!"),
            backgroundColor: Colors.brown.withOpacity(.2),
            /*withOpacity replaces the given colour with the given amount of 
              opacity specified*/
            titleTextStyle: TextStyle(
                color: Color.fromARGB(255, 213, 205, 177), fontSize: 28),
          ),
          /*in the above code we customised the features of the text and 
            background of the app bar*/
          body: (_questionIndex < _questions.length)
              //here we start working on the body of the home page
              /*"_questionIndex < _questions.length" is a condition which if 
            satisfied, the code after it can function*/
              ? Quiz(_answerQuest, _questions, _questionIndex)
              /*we are passing "_answerQuest","_questions" & "_questionIndex" 
                as arguments in the Quiz Class*/
              // "?" checks if the condition holds true
              : Result(_totalScore, _resetQuiz)),
      /*we are passing "_totalScore" & "_resetQuiz" as arguments in 
                the Result Class*/
    );
  }
}
