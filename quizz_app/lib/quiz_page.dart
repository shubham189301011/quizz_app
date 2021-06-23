import 'package:flutter/material.dart';
import 'package:quizz_app/home_page.dart';
import 'package:quizz_app/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizbrain = new QuizBrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];
  int score = 0;
  int total = 0;
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizbrain.getquestionanswer();

    setState(() {
      //Use IF/ELSE to check if we've reached the end of the quiz. If so,
      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
      if (quizbrain.isFinished() == true) {
        //show an alert using rFlutter_alert,

        Alert(
          context: context,
          title: 'Finished!',
          desc: 'Your Score is ${score}/${total}',
          buttons: [
            DialogButton(
              child: Text(
                "COOL",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomePage(),
              )),
              width: 120,
            )
          ],
        ).show();

        quizbrain.reset();

        scorekeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          score++;
          total++;
          scorekeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          total++;
          scorekeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizbrain.nextquestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(quizbrain.getquestiontext(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        decoration: TextDecoration.none)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  checkAnswer(true);
                  //The user picked true.
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  checkAnswer(false);
                  //The user picked false.
                },
              ),
            ),
          ),
          Row(
            children: scorekeeper,
          )
        ],
      ),
    );
  }
}
