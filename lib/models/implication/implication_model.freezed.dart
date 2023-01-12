// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'implication_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImplicationModel {
  TheoryModel get theory => throw _privateConstructorUsedError;
  List<QuestionModel> get questions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImplicationModelCopyWith<ImplicationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplicationModelCopyWith<$Res> {
  factory $ImplicationModelCopyWith(
          ImplicationModel value, $Res Function(ImplicationModel) then) =
      _$ImplicationModelCopyWithImpl<$Res, ImplicationModel>;
  @useResult
  $Res call({TheoryModel theory, List<QuestionModel> questions});

  $TheoryModelCopyWith<$Res> get theory;
}

/// @nodoc
class _$ImplicationModelCopyWithImpl<$Res, $Val extends ImplicationModel>
    implements $ImplicationModelCopyWith<$Res> {
  _$ImplicationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theory = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      theory: null == theory
          ? _value.theory
          : theory // ignore: cast_nullable_to_non_nullable
              as TheoryModel,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TheoryModelCopyWith<$Res> get theory {
    return $TheoryModelCopyWith<$Res>(_value.theory, (value) {
      return _then(_value.copyWith(theory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImplicationModelCopyWith<$Res>
    implements $ImplicationModelCopyWith<$Res> {
  factory _$$_ImplicationModelCopyWith(
          _$_ImplicationModel value, $Res Function(_$_ImplicationModel) then) =
      __$$_ImplicationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TheoryModel theory, List<QuestionModel> questions});

  @override
  $TheoryModelCopyWith<$Res> get theory;
}

/// @nodoc
class __$$_ImplicationModelCopyWithImpl<$Res>
    extends _$ImplicationModelCopyWithImpl<$Res, _$_ImplicationModel>
    implements _$$_ImplicationModelCopyWith<$Res> {
  __$$_ImplicationModelCopyWithImpl(
      _$_ImplicationModel _value, $Res Function(_$_ImplicationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theory = null,
    Object? questions = null,
  }) {
    return _then(_$_ImplicationModel(
      theory: null == theory
          ? _value.theory
          : theory // ignore: cast_nullable_to_non_nullable
              as TheoryModel,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ));
  }
}

/// @nodoc

class _$_ImplicationModel implements _ImplicationModel {
  const _$_ImplicationModel(
      {required this.theory, required final List<QuestionModel> questions})
      : _questions = questions;

  @override
  final TheoryModel theory;
  final List<QuestionModel> _questions;
  @override
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'ImplicationModel(theory: $theory, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImplicationModel &&
            (identical(other.theory, theory) || other.theory == theory) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, theory, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImplicationModelCopyWith<_$_ImplicationModel> get copyWith =>
      __$$_ImplicationModelCopyWithImpl<_$_ImplicationModel>(this, _$identity);
}

abstract class _ImplicationModel implements ImplicationModel {
  const factory _ImplicationModel(
      {required final TheoryModel theory,
      required final List<QuestionModel> questions}) = _$_ImplicationModel;

  @override
  TheoryModel get theory;
  @override
  List<QuestionModel> get questions;
  @override
  @JsonKey(ignore: true)
  _$$_ImplicationModelCopyWith<_$_ImplicationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
