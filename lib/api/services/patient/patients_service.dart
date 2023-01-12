import 'dart:async';
import 'package:chopper/chopper.dart';

part 'patients_service.chopper.dart';

@ChopperApi(baseUrl: '/patients')
abstract class PatientsService extends ChopperService {
  static PatientsService create([ChopperClient? client]) =>
      _$PatientsService(client);

  @Get(path: '/2?populate=deep')
  Future<Response> getPatients();
}

