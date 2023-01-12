// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TheoryModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get media => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TheoryModelCopyWith<TheoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TheoryModelCopyWith<$Res> {
  factory $TheoryModelCopyWith(
          TheoryModel value, $Res Function(TheoryModel) then) =
      _$TheoryModelCopyWithImpl<$Res, TheoryModel>;
  @useResult
  $Res call({int id, String title, String description, List<String> media});
}

/// @nodoc
class _$TheoryModelCopyWithImpl<$Res, $Val extends TheoryModel>
    implements $TheoryModelCopyWith<$Res> {
  _$TheoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TheoryModelCopyWith<$Res>
    implements $TheoryModelCopyWith<$Res> {
  factory _$$_TheoryModelCopyWith(
          _$_TheoryModel value, $Res Function(_$_TheoryModel) then) =
      __$$_TheoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String description, List<String> media});
}

/// @nodoc
class __$$_TheoryModelCopyWithImpl<$Res>
    extends _$TheoryModelCopyWithImpl<$Res, _$_TheoryModel>
    implements _$$_TheoryModelCopyWith<$Res> {
  __$$_TheoryModelCopyWithImpl(
      _$_TheoryModel _value, $Res Function(_$_TheoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? media = null,
  }) {
    return _then(_$_TheoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_TheoryModel implements _TheoryModel {
  const _$_TheoryModel(
      {required this.id,
      required this.title,
      required this.description,
      required final List<String> media})
      : _media = media;

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  final List<String> _media;
  @override
  List<String> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  String toString() {
    return 'TheoryModel(id: $id, title: $title, description: $description, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TheoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      const DeepCollectionEquality().hash(_media));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TheoryModelCopyWith<_$_TheoryModel> get copyWith =>
      __$$_TheoryModelCopyWithImpl<_$_TheoryModel>(this, _$identity);
}

abstract class _TheoryModel implements TheoryModel {
  const factory _TheoryModel(
      {required final int id,
      required final String title,
      required final String description,
      required final List<String> media}) = _$_TheoryModel;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get media;
  @override
  @JsonKey(ignore: true)
  _$$_TheoryModelCopyWith<_$_TheoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
