import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countRestart = 0;
  int _questionIndex =0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tестирование')),
        body: Container(
          child: Column(
            constraints:BoxConstraints.expand(),
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Text('Вопрос!'),
              ),
              Answer(),
              Answer(),
              Answer(),
              Answer(),
            ],
          ),
        ),
      );
  }
}
