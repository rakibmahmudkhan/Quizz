import 'package:flutter/material.dart';
import 'package:quizz/models/test_station.dart';
import 'package:quizz/pages/result_page.dart';

class SkillTestPage extends StatefulWidget {
  @override
  _SkillTestPageState createState() => _SkillTestPageState();
}

class _SkillTestPageState extends State<SkillTestPage> {
  List<bool> resultContainer = [];

  TestStation testStation = TestStation();

  void checkAnswer(bool userAnswer) {
    resultContainer.add(userAnswer);

    if (testStation.loadResultPage() == true) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ResultPage(resultContainer);
      }));
    } else {
      setState(() {
        testStation.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    testStation.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {
                      checkAnswer(true);
                    },
                    child: Text(
                      "True",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Text(
                      "False",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
