import 'package:task1/MathsquestionCall.dart';
import 'dart:io';

import 'package:task1/SciencequestionCall.dart';

void main(List<String> arguments) {
  var m = MathsQuestionCall();
  var s = ScienceQuestionCall();
  print('Select the subject for quiz:');
  print('press 1 for Maths Quiz\npress 2 for Science Quiz');

  var selectSubject = stdin.readLineSync();
  if (selectSubject == '1') {
    m.start();
  } else if (selectSubject == '2') {
    s.start();
  }
}
