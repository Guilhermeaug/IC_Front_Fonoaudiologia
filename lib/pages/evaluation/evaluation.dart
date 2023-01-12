import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/patient/patient_model.dart';
import '../../components/question/box_question.dart';
import 'evaluation_appBar.dart';
import 'evaluation_overview.dart';

class EvaluationPage extends ConsumerWidget {
  const EvaluationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final patient = ref.watch(patientDataProvider);

    return patient.when(
      data: (PatientModel patient) {
        return Scaffold(
          appBar: EvaluationAppBar(length: patient.implications.length),
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).backgroundColor),
                  color: Theme.of(context).backgroundColor,
                ),
                width: 700,
                child: const Overview(),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return AlertDialog(
                    insetPadding: EdgeInsets.zero,
                    content: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: const Question(),
                    ),
                  );
                },
              );
            },
            child: const Icon(Icons.assignment),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (Object error, StackTrace? stackTrace) => Text('$error'),
    );
  }
}
