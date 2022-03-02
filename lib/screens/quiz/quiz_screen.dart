import 'package:final_app_quiz/screens/quiz/componentes/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_app_quiz/controladores/pregunta.dart';

import 'componentes/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: ElevatedButton(
              onPressed: _controller.nextQuestion,
              child: const Text(
                "Sigiente",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                primary: Colors.white,
                elevation: 5,
                padding: const EdgeInsets.all(4),
              ),
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Body(),
      ),
    );
  }
}