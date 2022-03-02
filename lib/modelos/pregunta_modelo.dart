class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question,required this.answer,required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": " ¿En qué año se estrenó la película Nosferatu?",
    "options": ['1945', '1931', '1938', '1940'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "¿Quién es el cantante más escuchado de Spotify en 2021?",
    "options": ['Taylor Swift', 'BTS', 'Bad Bunny', 'Drake'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": " ¿Qué animal provoca más muertes al año en todo el mundo?",
    "options": ['Hipopotamo', 'Pitón', 'Tarántula', 'Mosquito'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "¿Cuál es el monumento mas visitado de España?",
    "options": [
      'Alhambra',
      'Mezquita de Córdoba',
      'Teatro Romano',
      'Sagrada Familia'
    ],
    "answer_index": 3,
  },
];