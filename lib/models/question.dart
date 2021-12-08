import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {

  final _data = [
    Question(
        title: 'Кем хочешь стать??',
        answers: [
          {'answer': 'Предпринимателем',},
          {'answer': 'Програмистом', 'isCorect': 1},
          {'answer': 'Пародистом',},
          {'answer': 'Мастером на все руки',},
        ]
    ),
    Question(title: 'Продолжи фразу: Сегодня я...',
        answers: [
          {'answer': '...люблю всех и желаю всем добра',},
          {'answer': '...проснулся раньше как никогда',},
          {'answer': '...хожу целый день пою',},
          {'answer': '...востанавливаю учебный график', 'isCorect':1},
        ]
    ),

  ];
  List<Question> get questions =>[..._date];

  get _date => [..._data];
}