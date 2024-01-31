class TestModel {
  String testName;
  String imagePath;
  int testNo;
  List<Questions> question;
  TestModel(
      {required this.testName,
      required this.imagePath,
      required this.question,
      required this.testNo});
}

class Questions {
  int qNo;
  String question;
  List<AnswerOption> answerWithScore;

  Questions(
      {required this.qNo,
      required this.answerWithScore,
      required this.question});
}

class AnswerOption {
  int optionNo;
  String option;
  int score;
  AnswerOption(
      {required this.optionNo, required this.option, required this.score});
}
