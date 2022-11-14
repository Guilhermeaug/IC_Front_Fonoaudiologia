// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$VideosService extends VideosService {
  _$VideosService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = VideosService;

  @override
  Future<Response<dynamic>> getVideo(String title) {
    final String $url = '/video/${title}';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}