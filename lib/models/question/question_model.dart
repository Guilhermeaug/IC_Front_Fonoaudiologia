import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../patient/patient_model.dart';

part 'question_model.freezed.dart';

part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel(
      {required int id,
      required String title,
      required String A,
      required String B,
      required String C,
      required String D,
      required String? E,
      required bool isAnswered,
      required bool isCorrect}) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
        id: json['id'],
        title: json['attributes']['title'],
        A: json['attributes']['A'],
        B: json['attributes']['B'],
        C: json['attributes']['C'],
        D: json['attributes']['D'],
        E: json['attributes']['E'],
        isAnswered: false,
        isCorrect: false);
  }
}

// @Riverpod(keepAlive: true)
// class QuestionNotifier extends _$QuestionNotifier {
//   @override
//   List<QuestionModel> build() {
//     final PatientModel? patient = ref.read(fetchPatientProvider).valueOrNull;
//     final implicationIndex = ref.read(implicationIndexProvider);
//     if (patient != null) {
//       return patient.implications[implicationIndex].questions;
//     } else {
//       throw Exception('Patient is null');
//     }
//   }
//
//   QuestionModel get currentQuestion {
//     final index = ref.watch(questionIndexProvider);
//     return state[index];
//   }
//
//   void markAsAnswered(int id, bool isCorrect) {
//     state = state.map((QuestionModel question) {
//       if (question.id == id) {
//         return question.copyWith(isAnswered: true, isCorrect: isCorrect);
//       } else {
//         return question;
//       }
//     }).toList();
//   }
// }
//
@Riverpod(keepAlive: true)
class QuestionIndex extends _$QuestionIndex {
  @override
  int build() {
    ref.watch(implicationIndexProvider);
    return 0;
  }

  void goToPreviousPage() {
    state = state - 1;
  }

  void goToNextPage() {
    state = state + 1;
  }
}

@riverpod
bool canGoNextQuestion(CanGoNextQuestionRef ref) {
  final questions = ref.read(patientDataProvider.select((value) => value
      .value!.implications[ref.read(implicationIndexProvider)].questions));
  return ref.watch(questionIndexProvider) < questions.length - 1;
}

@riverpod
bool canGoPreviousQuestion(CanGoPreviousQuestionRef ref) {
  return ref.watch(questionIndexProvider) > 0;
}
