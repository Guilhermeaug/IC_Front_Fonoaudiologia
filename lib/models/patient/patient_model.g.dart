// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

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

String _$PatientDataHash() => r'08d8aaa786810aaca3066d6f2171215b1c372dfc';

/// See also [PatientData].
final patientDataProvider = AsyncNotifierProvider<PatientData, PatientModel>(
  PatientData.new,
  name: r'patientDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$PatientDataHash,
);
typedef PatientDataRef = AsyncNotifierProviderRef<PatientModel>;

abstract class _$PatientData extends AsyncNotifier<PatientModel> {
  @override
  FutureOr<PatientModel> build();
}

String _$ImplicationIndexHash() => r'00cf39faaff03c1c3a3b862367b330b91dfd6530';

/// See also [ImplicationIndex].
final implicationIndexProvider = NotifierProvider<ImplicationIndex, int>(
  ImplicationIndex.new,
  name: r'implicationIndexProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$ImplicationIndexHash,
);
typedef ImplicationIndexRef = NotifierProviderRef<int>;

abstract class _$ImplicationIndex extends Notifier<int> {
  @override
  int build();
}

String _$canGoNextImplicationHash() =>
    r'492b4d6e72491215bafc36ccf308205164098146';

/// See also [canGoNextImplication].
final canGoNextImplicationProvider = AutoDisposeProvider<bool>(
  canGoNextImplication,
  name: r'canGoNextImplicationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$canGoNextImplicationHash,
);
typedef CanGoNextImplicationRef = AutoDisposeProviderRef<bool>;
String _$canGoPreviousImplicationHash() =>
    r'1224fcbed9a1f631e9d9b43e5f4158cd237ded0f';

/// See also [canGoPreviousImplication].
final canGoPreviousImplicationProvider = AutoDisposeProvider<bool>(
  canGoPreviousImplication,
  name: r'canGoPreviousImplicationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$canGoPreviousImplicationHash,
);
typedef CanGoPreviousImplicationRef = AutoDisposeProviderRef<bool>;
