// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$QuestionIndexHash() => r'326977cd396c64ea00a309e6ce280da8a5363a40';

/// See also [QuestionIndex].
final questionIndexProvider = NotifierProvider<QuestionIndex, int>(
  QuestionIndex.new,
  name: r'questionIndexProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$QuestionIndexHash,
);
typedef QuestionIndexRef = NotifierProviderRef<int>;

abstract class _$QuestionIndex extends Notifier<int> {
  @override
  int build();
}

String _$canGoNextQuestionHash() => r'bf40d4521b7024769ed02a01f749e1f1872baaea';

/// See also [canGoNextQuestion].
final canGoNextQuestionProvider = AutoDisposeProvider<bool>(
  canGoNextQuestion,
  name: r'canGoNextQuestionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$canGoNextQuestionHash,
);
typedef CanGoNextQuestionRef = AutoDisposeProviderRef<bool>;
String _$canGoPreviousQuestionHash() =>
    r'18d5d0b79bc2038a1ffacfcb5c75f5e0a96e510f';

/// See also [canGoPreviousQuestion].
final canGoPreviousQuestionProvider = AutoDisposeProvider<bool>(
  canGoPreviousQuestion,
  name: r'canGoPreviousQuestionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$canGoPreviousQuestionHash,
);
typedef CanGoPreviousQuestionRef = AutoDisposeProviderRef<bool>;
