import 'package:flutter/material.dart';
import 'package:quizz_app/login_screen.dart';
import 'package:quizz_app/quiz_page.dart';
import 'package:quizz_app/view_previous_marks.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      //backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
              },
              child: Icon(Icons.account_circle_outlined)),
        ),
        elevation: 100.0,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 400.0,
              //color: Colors.blueAccent,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage('assets/linesgraph.png'),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 70.0,
              width: 380.0,
              //color: Colors.blueAccent,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0)),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ));
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Take SE Quiz -1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 70.0,
              width: 380.0,
              //color: Colors.blueAccent,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0)),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ));
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Take SE Quiz -2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: SizedBox(
                height: 30.0,
              ),
            ),
            SafeArea(
              child: Container(
                width: 380.0,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.green),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ViewPreviousMarks(),
                      ));
                    },
                    child: Text(
                      "View Previous Marks",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
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
