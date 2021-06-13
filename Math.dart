import 'dart:core';

class Math {
  late String _question;
  List<String> _options = [];
  late String _answer;

  // ignore: avoid_types_as_parameter_names
  Math(String k, List<String> option, String answer) {
    _question = k;
    _options = option;

    // ignore: omit_local_variable_types
    for (int i = 0; i < answer.length - 3; i++) {
      _options.add(option[i]);
    }
    _options.shuffle();
    _answer = answer;
  }
  String getQuestion() {
    return _question;
  }

  List<String> getOptions() {
    return _options;
  }

  String getAnswer() {
    return _answer;
  }
}
