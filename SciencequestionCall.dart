import 'dart:io' show stdin;
import 'dart:math';

import 'package:task1/Math.dart';

class ScienceQuestionCall {
  List questionSet = [];
  ScienceQuestionCall() {
    var a = 'What is the formula of Water';
    var Question1_option = ['H2O', 'CO2', 'O2', 'H2'];
    questionSet.add(Math(a, Question1_option, 'H2O'));

    a = 'What is atomic number of oxygen?';
    Question1_option = ['6', '3', '8', '9'];
    questionSet.add(Math(a, Question1_option, '8'));

    a = 'What is atomic number of carbon?';
    Question1_option = ['6', '8', '7', '5'];
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
        '\n\n\nCongratulations!! You Got   $numCorrect  /  ${questionSet.length}  correct answer in the Science quiz');
  }
}
