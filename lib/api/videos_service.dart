import 'dart:async';
import 'package:chopper/chopper.dart';

part 'videos_service.chopper.dart';

@ChopperApi(baseUrl: '/video')
abstract class VideosService extends ChopperService {
  static VideosService create([ChopperClient? client]) =>
      _$VideosService(client);

  @Get(path: '/{title}')
  Future<Response> getVideo(@Path('title') String title);
}

