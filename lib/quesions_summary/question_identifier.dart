import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {required this.isCorrectAnswer, required this.questionIndex, super.key});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 192, 226, 255)
            : const Color.fromARGB(255, 255, 147, 183),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style:const  TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 67, 0, 78),
        ),
      ),
    );
  }
}
