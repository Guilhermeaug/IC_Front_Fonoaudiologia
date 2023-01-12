import 'package:chopper/chopper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../api/client/client.dart';
import '../../api/services/patient/patients_service.dart';
import '../implication/implication_model.dart';
import '../question/question_model.dart';
import '../theory/theory_model.dart';

part 'patient_model.g.dart';

part 'patient_model.freezed.dart';

@freezed
class PatientModel with _$PatientModel {
  const factory PatientModel({required List<ImplicationModel> implications}) =
      _PatientModel;
}

List<ImplicationModel> getSteps(Map<String, dynamic> data) {
  final steps = data['steps']['data'] as List<dynamic>;
  final List<ImplicationModel> implications = [];

  for (final step in steps) {
    final TheoryModel theory = TheoryModel.fromJson(step);
    final List<QuestionModel> questions = step['attributes']['questions']
            ['data']
        .map<QuestionModel>((dynamic question) {
      return QuestionModel.fromJson(question);
    }).toList();
    implications.add(ImplicationModel(theory: theory, questions: questions));
  }

  return implications;
}

@Riverpod(keepAlive: true)
class PatientData extends _$PatientData {
  @override
  Future<PatientModel> build() async {
    print('Built Patient Data');
    final ChopperClient client = ref.read(chopperClientProvider);
    final PatientsService service = client.getService<PatientsService>();
    final Response response = await service.getPatients();
    final data = response.body['data']['attributes'];

    final List<ImplicationModel> implications = getSteps(data);
    return PatientModel(implications: implications);
  }

  TheoryModel get currentTheory {
    final index = ref.read(implicationIndexProvider);
    return state.value!.implications[index].theory;
  }

  QuestionModel get currentQuestion {
    final implicationIndex = ref.read(implicationIndexProvider);
    final questionIndex = ref.read(questionIndexProvider);
    return state.value!.implications[implicationIndex].questions[questionIndex];
  }

  void markAsAnswered(bool isCorrect) {
    state = state.whenData((PatientModel patient) {
      final newQuestions = patient
          .implications[ref.read(implicationIndexProvider)].questions
          .map((QuestionModel question) {
        if (question.id == currentQuestion.id) {
          return question.copyWith(isAnswered: true, isCorrect: isCorrect);
        } else {
          return question;
        }
      }).toList();
      final newImplications =
          patient.implications.map((ImplicationModel implication) {
        if (implication.theory.id == currentTheory.id) {
          return implication.copyWith(questions: newQuestions);
        } else {
          return implication;
        }
      }).toList();
      return patient.copyWith(implications: newImplications);
    });
  }
}

@Riverpod(keepAlive: true)
class ImplicationIndex extends _$ImplicationIndex {
  @override
  int build() {
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
bool canGoNextImplication(CanGoNextImplicationRef ref) {
  final implications = ref
      .read(patientDataProvider.select((value) => value.value!.implications));
  return ref.watch(implicationIndexProvider) < implications.length - 1;
}

@riverpod
bool canGoPreviousImplication(CanGoPreviousImplicationRef ref) {
  return ref.watch(implicationIndexProvider) > 0;
}
