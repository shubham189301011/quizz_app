import 'package:flutter/material.dart';
import 'package:quizz_app/login_screen.dart';
import 'package:quizz_app/home_page.dart';
import 'package:quizz_app/view_previous_marks.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.grey.shade900,
        //backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: LoginScreen(),
            //child: ViewPreviousMarks(),
          ),
        ),
      ),
    );
  }
}
