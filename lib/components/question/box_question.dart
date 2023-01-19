import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/question/question_model.dart';
import '../space.dart';
import 'content_question.dart';
import 'feedback_question.dart';

class Question extends ConsumerWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canGoNext = ref.watch(canGoNextQuestionProvider);
    final canGoPrevious = ref.watch(canGoPreviousQuestionProvider);

    void goToNextQuestion() async {
      ref.read(questionIndexProvider.notifier).goToNextPage();
    }
    void goToPreviousQuestion() {
      ref.read(questionIndexProvider.notifier).goToPreviousPage();
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Content(),
        const VerticalSpace(5),
        const Expanded(child: FeedbackQuestion()),
        const VerticalSpace(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: canGoPrevious ? goToPreviousQuestion : null,
              child: const Text('Anterior'),
            ),
            OutlinedButton(
              onPressed: canGoNext ? goToNextQuestion : null,
              child: const Text('Próxima'),
            ),
          ],
        ),
      ],
    );
  }
}
