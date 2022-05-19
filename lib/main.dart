import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/skill_test_page.dart';

void main() {
  runApp(Quizz());
}

class Quizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: SkillTestPage(),
    );
  }
}
