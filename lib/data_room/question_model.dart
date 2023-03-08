import 'dart:ui';

class QuestionModel {
  String category;
  String type;
  String difficulty;
  String question;
  String correctAnswer;
  List incorrectAnswers;
  int Score;

  QuestionModel(
      {required this.category,
      required this.correctAnswer,
      required this.Score,
      required this.difficulty,
      required this.incorrectAnswers,
      required this.question,
      required this.type});

  static List<QuestionModel> questionList = [
    QuestionModel(
      Score: 15,
      category: "Geography",
      type: "multiple",
      difficulty: "hard",
      question: "What is the largest city and commercial capital of Sri Lanka?",
      correctAnswer: "Colombo",
      incorrectAnswers: [
        "Moratuwa",
        "Negombo",
        "Kandy",
        "Colombo",
      ],
    ),
    QuestionModel(
      Score: 10,
      category: "Math",
      type: "multiple",
      difficulty: "medium",
      question:
          "Which European city has the highest mileage of canals in the world?",
      correctAnswer: "Birmingham",
      incorrectAnswers: [
        "Venice",
        "Amsterdam",
        "Berlin",
        "Birmingham",
      ],
    ),
    QuestionModel(
        Score: 15,
        category: "Physics",
        type: "multiple",
        difficulty: "hard",
        question: "Which of these is NOT a province in China?",
        correctAnswer: "Yangtze",
        incorrectAnswers: [
          "Fujian",
          "Sichuan",
          "Guangdong",
          "Yangtze",
        ]),
    QuestionModel(
        Score: 25,
        category: "Chemistry",
        type: "multiple",
        difficulty: "easy",
        question:
            "Which of these is the name of the largest city in the US state Tennessee?",
        correctAnswer: "Memphis",
        incorrectAnswers: [
          "Thebes",
          "Alexandria",
          "Luxor",
          "Memphis",
        ]),
    QuestionModel(
        Score: 5,
        category: "Biology",
        type: "multiple",
        difficulty: "medium",
        question: "How many countries does Spain have a land border with?",
        correctAnswer: "5",
        incorrectAnswers: [
          "2",
          "3",
          "4",
          "5",
        ]),
    QuestionModel(
        Score: 15,
        category: "Science",
        type: "multiple",
        difficulty: "easy",
        question: "What is the Capital of the United States?",
        correctAnswer: "Washington, D.C.",
        incorrectAnswers: [
          "Los Angelas, CA",
          "New York City, NY",
          "Houston, TX",
          "Washington, D.C.",
        ]),
    QuestionModel(
        Score: 35,
        category: "Soccer",
        type: "multiple",
        difficulty: "medium",
        question: "What tiny principality lies between Spain and France?",
        correctAnswer: "Andorra",
        incorrectAnswers: [
          "Liechtenstein",
          "Monaco",
          "San Marino",
          "Andorra",
        ]),
    QuestionModel(
        Score: 15,
        category: "Lab",
        type: "multiple",
        difficulty: "medium",
        question: "How many timezones does Russia have?",
        correctAnswer: "11",
        incorrectAnswers: [
          "6",
          "24",
          "16",
          "11",
        ]),
    QuestionModel(
        Score: 10,
        category: "Astronomy",
        type: "multiple",
        difficulty: "hard",
        question:
            '  What is the most common climbing route for the second highest mountain in the world, K2?',
        correctAnswer: "Abruzzi Spur",
        incorrectAnswers: [
          "Magic Line",
          "Cesen Route",
          "Polish Line",
          "Abruzzi Spur",
        ]),
    QuestionModel(
        Score: 15,
        category: "Music",
        type: "multiple",
        difficulty: "hard",
        question: "Into which basin does the Jordan River flow into?",
        correctAnswer: "Dead Sea",
        incorrectAnswers: [
          "Aral Sea",
          "Caspian Sea",
          "Salton Sea",
          "Dead Sea",
        ]),
    /***/ QuestionModel(
      Score: 15,
      category: "Math",
      type: "multiple",
      difficulty: "hard",
      question: "What is the largest city and commercial capital of Sri Lanka?",
      correctAnswer: "Colombo",
      incorrectAnswers: [
        "Moratuwa",
        "Negombo",
        "Kandy",
        "Colombo",
      ],
    ),
    QuestionModel(
      Score: 10,
      category: "Geography",
      type: "multiple",
      difficulty: "medium",
      question:
          "Which European city has the highest mileage of canals in the world?",
      correctAnswer: "Birmingham",
      incorrectAnswers: [
        "Venice",
        "Amsterdam",
        "Berlin",
        "Birmingham",
      ],
    ),
    QuestionModel(
        Score: 15,
        category: "Physics",
        type: "multiple",
        difficulty: "hard",
        question: "Which of these is NOT a province in China?",
        correctAnswer: "Yangtze",
        incorrectAnswers: [
          "Fujian",
          "Sichuan",
          "Guangdong",
          "Yangtze",
        ]),
    QuestionModel(
        Score: 25,
        category: "Chemistry",
        type: "multiple",
        difficulty: "easy",
        question:
            "Which of these is the name of the largest city in the US state Tennessee?",
        correctAnswer: "Memphis",
        incorrectAnswers: [
          "Thebes",
          "Alexandria",
          "Luxor",
          "Memphis",
        ]),
    QuestionModel(
        Score: 5,
        category: "Biology",
        type: "multiple",
        difficulty: "medium",
        question: "How many countries does Spain have a land border with?",
        correctAnswer: "5",
        incorrectAnswers: [
          "2",
          "3",
          "4",
          "5",
        ]),
    QuestionModel(
        Score: 15,
        category: "Science",
        type: "multiple",
        difficulty: "easy",
        question: "What is the Capital of the United States?",
        correctAnswer: "Washington, D.C.",
        incorrectAnswers: [
          "Los Angelas, CA",
          "New York City, NY",
          "Houston, TX",
          "Washington, D.C.",
        ]),
    QuestionModel(
        Score: 35,
        category: "Soccer",
        type: "multiple",
        difficulty: "medium",
        question: "What tiny principality lies between Spain and France?",
        correctAnswer: "Andorra",
        incorrectAnswers: [
          "Liechtenstein",
          "Monaco",
          "San Marino",
          "Andorra",
        ]),
    QuestionModel(
        Score: 15,
        category: "Lab",
        type: "multiple",
        difficulty: "medium",
        question: "How many timezones does Russia have?",
        correctAnswer: "11",
        incorrectAnswers: [
          "6",
          "24",
          "16",
          "11",
        ]),
    QuestionModel(
        Score: 10,
        category: "Astronomy",
        type: "multiple",
        difficulty: "hard",
        question:
            '  What is the most common climbing route for the second highest mountain in the world, K2?',
        correctAnswer: "Abruzzi Spur",
        incorrectAnswers: [
          "Magic Line",
          "Cesen Route",
          "Polish Line",
          "Abruzzi Spur",
        ]),
    QuestionModel(
        Score: 15,
        category: "Music",
        type: "multiple",
        difficulty: "hard",
        question: "Into which basin does the Jordan River flow into?",
        correctAnswer: "Dead Sea",
        incorrectAnswers: [
          "Aral Sea",
          "Caspian Sea",
          "Salton Sea",
          "Dead Sea",
        ]),
  ];
}

class Question {
  int index;
  Color questionColor;
  bool isCorrect;

  Question({
    required this.isCorrect,
    required this.index,
    required this.questionColor,
  });

  Map<String, dynamic> toMap() {
    return {
      'index': index,
      'questionColor': questionColor,
      'isCorrect': isCorrect,
    };
  }

  static Question fromMap(Map<String, dynamic> map) {
    return Question(
      index: map['index'],
      questionColor: map['questionColor'],
      isCorrect: map['isCorrect'],
    );
  }
}
