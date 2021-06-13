import 'dart:io' show stdin;
import 'dart:math';

import 'package:task1/Math.dart';

class MathsQuestionCall {
  List questionSet = [];
  MathsQuestionCall() {
    var a = 'What is the Value of x in 2x+6=0?';
    var Question1_option = ['3', '-3', '6', '5'];
    questionSet.add(Math(a, Question1_option, '-3'));

    a = 'What is th square of 17?';
    Question1_option = ['225', '196', '254', '289'];
    questionSet.add(Math(a, Question1_option, '289'));

    a = 'What is the cube root of 216?';
    Question1_option = ['6', '5', '4', '7'];
    questionSet.add(Math(a, Question1_option, '6'));
    questionSet.shuffle(Random());
  }

  void start() {
    int numCorrect;
    numCorrect = 0;
    // ignore: omit_local_variable_types
    for (int question = 0; question < questionSet.length; question++) {
      print(questionSet[question].getQuestion());
      int numChoices = questionSet[question].getOptions().length;
      // ignore: omit_local_variable_types
      for (int choice = 0; choice < numChoices; choice++) {
        print('${choice + 1} : ${questionSet[question].getOptions()[choice]}');
      }
      // ignore: omit_local_variable_types
      int playerAnswer = int.parse(stdin.readLineSync()!);
      List<String> choiceSet = questionSet[question].getOptions();
      String correctAnswer = questionSet[question].getAnswer();
      var correctAnswerIndex = choiceSet.indexOf(correctAnswer);
      // ignore: unrelated_type_equality_checks
      if (playerAnswer == (correctAnswerIndex + 1)) {
        numCorrect++;
        print('You Got This Correct');
      } else {
        print(
            'You Got This Wrong The Correct Answer is ${questionSet[question].getAnswer()}');
      }
    }
    print(
        '\n\n\nCongratulations!! You Got   $numCorrect  /  ${questionSet.length}  correct answer in the Math quiz');
  }
}
