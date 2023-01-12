import 'package:freezed_annotation/freezed_annotation.dart';

import '../question/question_model.dart';
import '../theory/theory_model.dart';

part 'implication_model.freezed.dart';

@freezed
class ImplicationModel with _$ImplicationModel {
  const factory ImplicationModel(
      {required TheoryModel theory,
      required List<QuestionModel> questions}) = _ImplicationModel;
}
