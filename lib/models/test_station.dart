import 'package:quizz/models/question.dart';

class TestStation {
  int _questionIndex = 0;
  List<Question> _questionList = [
    Question('Rajshahi is the Capital city of Bangladesh', false),
    Question('Bangladesh won the ICC Men\'s T20 World Cup 2021', false),
    Question(
        'Abdul Hamid is the 20th and current President of Bangladesh', true),
    Question('Bengali is the mother tongue of Bangladesh', true),
    Question('English is the mother tongue of Bangladesh', false),
    Question('Bangladesh is the developed country', false),
    Question(
        'Abdul Hamid is the 21th and current President of Bangladesh', false),
    Question('Hasan Mahmud is not current President of Bangladesh', true),
    Question('1971 is the birthdate of Bangladesh', true),
  ];

  void nextQuestion() {
    if (_questionIndex < _questionList.length - 1) {
      _questionIndex++;
    }
  }

  String getQuestionText() {
    return _questionList[_questionIndex].text;
  }

  bool getCorrectAnswer() {
    return _questionList[_questionIndex].answer;
  }

  List<Question> getQuestionList() {
    return _questionList;
  }

  bool loadResultPage() {
    if (_questionIndex == _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
