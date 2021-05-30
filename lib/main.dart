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
  final questions = const [
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

  var _questionIndex = 0;

  void _answerQuestion() {
    var aBool = true;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello!'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                  // ElevatedButton(onPressed: onPressed, child: child)
                ],
              )
            : Center(child: Text('You did it!')),
      ),
    );
  }
}
