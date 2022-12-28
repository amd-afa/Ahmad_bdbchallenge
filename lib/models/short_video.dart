import 'package:json_annotation/json_annotation.dart';

part 'short_video.g.dart';

@JsonSerializable(explicitToJson: true)
class ShortVideo {
  final String link;
  final String name;

  ShortVideo(this.link, this.name);

  factory ShortVideo.fromJson(Map<String, dynamic> json) =>
      _$ShortVideoFromJson(json);

  Map<String, dynamic> toJson() => _$ShortVideoToJson(this);

  factory ShortVideo.fromDocument(dynamic document) {
    ShortVideo shortVideo = ShortVideo.fromJson(document.data()!);
    return shortVideo;
  }
}
