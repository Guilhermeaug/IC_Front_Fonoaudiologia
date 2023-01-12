// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientModel {
  List<ImplicationModel> get implications => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientModelCopyWith<PatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientModelCopyWith<$Res> {
  factory $PatientModelCopyWith(
          PatientModel value, $Res Function(PatientModel) then) =
      _$PatientModelCopyWithImpl<$Res, PatientModel>;
  @useResult
  $Res call({List<ImplicationModel> implications});
}

/// @nodoc
class _$PatientModelCopyWithImpl<$Res, $Val extends PatientModel>
    implements $PatientModelCopyWith<$Res> {
  _$PatientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? implications = null,
  }) {
    return _then(_value.copyWith(
      implications: null == implications
          ? _value.implications
          : implications // ignore: cast_nullable_to_non_nullable
              as List<ImplicationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientModelCopyWith<$Res>
    implements $PatientModelCopyWith<$Res> {
  factory _$$_PatientModelCopyWith(
          _$_PatientModel value, $Res Function(_$_PatientModel) then) =
      __$$_PatientModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImplicationModel> implications});
}

/// @nodoc
class __$$_PatientModelCopyWithImpl<$Res>
    extends _$PatientModelCopyWithImpl<$Res, _$_PatientModel>
    implements _$$_PatientModelCopyWith<$Res> {
  __$$_PatientModelCopyWithImpl(
      _$_PatientModel _value, $Res Function(_$_PatientModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? implications = null,
  }) {
    return _then(_$_PatientModel(
      implications: null == implications
          ? _value._implications
          : implications // ignore: cast_nullable_to_non_nullable
              as List<ImplicationModel>,
    ));
  }
}

/// @nodoc

class _$_PatientModel implements _PatientModel {
  const _$_PatientModel({required final List<ImplicationModel> implications})
      : _implications = implications;

  final List<ImplicationModel> _implications;
  @override
  List<ImplicationModel> get implications {
    if (_implications is EqualUnmodifiableListView) return _implications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_implications);
  }

  @override
  String toString() {
    return 'PatientModel(implications: $implications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientModel &&
            const DeepCollectionEquality()
                .equals(other._implications, _implications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_implications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientModelCopyWith<_$_PatientModel> get copyWith =>
      __$$_PatientModelCopyWithImpl<_$_PatientModel>(this, _$identity);
}

abstract class _PatientModel implements PatientModel {
  const factory _PatientModel(
      {required final List<ImplicationModel> implications}) = _$_PatientModel;

  @override
  List<ImplicationModel> get implications;
  @override
  @JsonKey(ignore: true)
  _$$_PatientModelCopyWith<_$_PatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
