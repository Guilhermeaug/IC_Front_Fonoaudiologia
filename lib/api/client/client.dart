import 'package:chopper/chopper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/patient/patients_service.dart';

part 'client.g.dart';

@riverpod
ChopperClient chopperClient(ChopperClientRef ref) {
  return ChopperClient(
    baseUrl: Uri.parse('http://sistemaespecialistastrapi.eastus.cloudapp.azure.com:1337/api'),
    interceptors: [
      const HeadersInterceptor({
        'Authorization':
        'Bearer 18accbd3a2f1d091ab71f89ec58b64af4ac72e3764b247c8ac73c2465387226c64ae4f2b0c5cb202b248bd70c6f8d406fc4bfb22d36cae8544091d88130e427c37ad2a2f722a2c0f07e0bad179d9e6d4040d018b5669e8f0c2359016fddb8fe1a2c00220f8835fda8aeac6b33a6f97f0753132ab240c58b8721cbd37a83d5fb3'
      }),
    ],
    converter: const JsonConverter(),
    services: [
      PatientsService.create(),
    ],
  );
}
