import 'package:flutter/material.dart';

import './question.dart';  
import './answer.dart';  

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

@override
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }
 
  Widget build(BuildContext context) {

    
    var questions = [
      {
        'questionText': 'What\'s your favorite color?', 
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?', 
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite instuctor?', 
        'answers': ['Max', 'Mike', 'Marco', 'Ester'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello!'),
        ),
        body: Column(
          children: [
            Question(
              // questions.elementAt(0),
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            // ElevatedButton(onPressed: onPressed, child: child)
          ],
        ),
      ),
    );
  }
}
