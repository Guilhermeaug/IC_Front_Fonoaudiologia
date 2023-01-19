import 'package:chopper/chopper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/patient/patients_service.dart';

part 'client.g.dart';

@riverpod
ChopperClient chopperClient(ChopperClientRef ref) {
  return ChopperClient(
    baseUrl: Uri.parse('https://sistema-especialista.azurewebsites.net/api'),
    interceptors: [
      const HeadersInterceptor({
        'Authorization':
        'Bearer 9f1e8a16a3ae10533fdf91c83241f37eedd2a3c9a1738bcc569065772c20fd8f1a9353b904dc8f35bdd7b10b3de24e363e01102b2a0781f56de13a41756a1919c47be0e4467603f2ab794e7e168ea475f1852310db1dcbc68bd6c312476d16726b7c15bd903d83045f3ff16923709fdf326085e926ed315b464e15bf1da3eb1b'
      }),
    ],
    converter: const JsonConverter(),
    services: [
      PatientsService.create(),
    ],
  );
}
