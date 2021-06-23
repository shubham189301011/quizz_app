import 'questions.dart';

class QuizBrain {
  int _questionnumber = 0;

  List<Questions> _questionbank = [
    Questions(
        'In agile process models the only deliverable work product is the working program.',
        false),
    Questions(
        'Most software development projects are initiated to try to meet some business need',
        true),
    Questions(
        'Planning ahead for software reuse reduces the cost and increases the value of the systems into which they are incorporated',
        true),
    Questions(
        'The essence of software engineering practice might be described as understand the problem, plan a solution, carry out the plan, and examine the result for accuracy.',
        true),
    Questions(
        'Software engineering umbrella activities are only applied during the initial phases of software development projects.',
        false),
    Questions(
        'Software is a product and can be manufactured using the same technologies used for other engineering artifacts.',
        false),
    Questions(
        'If a software production gets behind schedule, one can add more programmers and catch up.',
        false),
    Questions(
        'The only deliverable work product for a successful project is the working program.',
        false),
    Questions(
        'A general statement of objectives is the major cause of failed software efforts.',
        true),
    Questions('Google was originally called \"Backrub\".', true),
    Questions(
        'Component-based Software Engineering allows faster delivery.', true)
  ];
  void nextquestion() {
    if (_questionnumber < _questionbank.length - 1) _questionnumber++;
    print(_questionnumber);
    print(_questionbank.length);
  }

  String getquestiontext() {
    return _questionbank[_questionnumber].questiontext;
  }

  bool getquestionanswer() {
    return _questionbank[_questionnumber].questionanswer;
  }

  bool isFinished() {
    if (_questionnumber >= _questionbank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionnumber = 0;
  }
}
