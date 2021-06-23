import 'package:flutter/material.dart';
import 'package:quizz_app/home_page.dart';

class ViewPreviousMarks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Previous Marks",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Quiz 1 Marks -  17/20",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Quiz 2 Marks -  20/20",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Quiz 3 Marks -  19/20",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Average Marks -  19/20",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Class Average -  14/20",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
