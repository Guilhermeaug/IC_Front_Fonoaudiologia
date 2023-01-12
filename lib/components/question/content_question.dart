import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/patient/patient_model.dart';
import '../../models/question/question_model.dart';
import '../space.dart';

class Content extends ConsumerStatefulWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ContentState();
}

class _ContentState extends ConsumerState<Content> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    final index = ref.watch(questionIndexProvider);
    final patientNotifier = ref.read(patientDataProvider.notifier);
    final question = patientNotifier.currentQuestion;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Questão ${index + 1}'),
            const VerticalSpace(10),
            Text(
              question.title,
              style: const TextStyle(
                fontSize: 16,
                overflow: TextOverflow.clip,
              ),
            ),
            const VerticalSpace(10),
            RadioListTile(
              title: Text(question.A),
              value: 1,
              groupValue: _value,
              contentPadding: const EdgeInsets.all(0),
              onChanged: (int? value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
            RadioListTile(
              title: Text(question.B),
              value: 2,
              groupValue: _value,
              contentPadding: const EdgeInsets.all(0),
              onChanged: (int? value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
            RadioListTile(
              title: Text(question.C),
              value: 3,
              groupValue: _value,
              contentPadding: const EdgeInsets.all(0),
              onChanged: (int? value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
            RadioListTile(
              title: Text(question.D),
              value: 4,
              groupValue: _value,
              contentPadding: const EdgeInsets.all(0),
              onChanged: (int? value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
            if (question.E != null)
              RadioListTile(
                title: Text(question.E!),
                value: 5,
                groupValue: _value,
                contentPadding: const EdgeInsets.all(0),
                onChanged: (int? value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
            Align(
              alignment: const Alignment(0.7, 0.5),
              child: ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    const Size(150, 30),
                  ),
                ),
                onPressed: () {
                  patientNotifier.markAsAnswered(true);
                },
                child: const Text('Confirmar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
