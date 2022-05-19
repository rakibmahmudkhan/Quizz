import 'package:flutter/material.dart';
import 'package:quizz/models/test_station.dart';

class ResultPage extends StatefulWidget {
  List<bool> answerList;
  ResultPage(this.answerList);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  TestStation testStation = TestStation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Result"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
        ),
        body: SafeArea(
            child: ListView.builder(
                itemCount: testStation.getQuestionList().length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 16, left: 16, bottom: 4, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              testStation.getQuestionList()[index].text,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: testStation
                                              .getQuestionList()[index]
                                              .answer ==
                                          widget.answerList[index]
                                      ? Colors.green
                                      : Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Your Answer:",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                        widget.answerList[index] == true
                                            ? "True"
                                            : "False",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Text("Correct Answer:",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                        testStation
                                                    .getQuestionList()[index]
                                                    .answer ==
                                                true
                                            ? "True"
                                            : "False",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      )
                    ],
                  );
                })));
  }
}
