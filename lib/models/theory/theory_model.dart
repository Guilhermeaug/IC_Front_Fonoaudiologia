import 'package:freezed_annotation/freezed_annotation.dart';

part 'theory_model.freezed.dart';

@freezed
class TheoryModel with _$TheoryModel {

  const factory TheoryModel({
    required int id,
    required String title,
    required String description,
    required List<String> media
  }) = _TheoryModel;

  factory TheoryModel.fromJson(Map<String, dynamic> json) {
   List<String> mediaLinks = [];
   for (final media in json['attributes']['media']['data']) {
     mediaLinks.add(media['attributes']['url']);
   }
    return TheoryModel(
      id: json['id'],
      title: json['attributes']['title'],
      description: json['attributes']['description'],
      media: mediaLinks,
    );
  }
}
