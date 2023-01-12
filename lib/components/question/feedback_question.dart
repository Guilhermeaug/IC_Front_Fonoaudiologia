import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/patient/patient_model.dart';
import '../../models/question/question_model.dart';

class FeedbackQuestion extends ConsumerWidget {
  const FeedbackQuestion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(questionIndexProvider);
    ref.watch(patientDataProvider);

    final patientNotifier = ref.read(patientDataProvider.notifier);
    final question = patientNotifier.currentQuestion;

    return Visibility(
      visible: question.isAnswered,
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green.shade800,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Feedback',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porta odio turpis, vitae tempor dolor eleifend in. Fusce dictum odio eu nibh semper suscipit. Vestibulum consequat sodales lorem. Sed pulvinar blandit neque, eu feugiat velit blandit sit amet. Phasellus pharetra ipsum id arcu laoreet interdum. Donec ullamcorper commodo tellus nec scelerisque. Sed massa erat, vestibulum in rutrum non, commodo eget leo. Maecenas sollicitudin ultrices dignissim. Suspendisse ipsum urna, faucibus at erat sed, finibus interdum arcu. Proin a lacus vehicula, pellentesque eros ac, eleifend mi. Phasellus bibendum ante est, sit amet sodales sem facilisis porta. Sed elementum ornare risus sit amet bibendum. Integer pellentesque neque vitae hendrerit ornare. In velit lorem, imperdiet at ultrices a, convallis vel mi. Ut eu fermentum sapien. ',
                  style: TextStyle(
                      fontSize: 12,
                      overflow: TextOverflow.clip,
                      color: Colors.white),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
