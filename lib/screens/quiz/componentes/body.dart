import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_app_quiz/constants.dart';
import 'package:final_app_quiz/controladores/pregunta.dart';
import 'package:flutter_svg/svg.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Pregunta ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: kSecondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}