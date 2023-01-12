// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patients_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PatientsService extends PatientsService {
  _$PatientsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PatientsService;

  @override
  Future<Response<dynamic>> getPatients() {
    final Uri $url = Uri.parse('/patients/2?populate=deep');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
