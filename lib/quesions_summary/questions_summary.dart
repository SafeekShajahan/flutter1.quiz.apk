import 'package:adv_basics/quesions_summary/summary_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (data) {
            return SummaryItem(data);
            // return Row(
            //   children: [
            //     Text(((data['question_index'] as int) + 1).toString()),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Text(data['question'] as String),
            //           Text(data['correct_answer'] as String),
            //         ],
            //       ),
            //     ),
            //   ],
            // );
          },
        ).toList()),
      ),
    );
  }
}
