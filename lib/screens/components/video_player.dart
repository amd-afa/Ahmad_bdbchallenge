import 'package:bdb_challenge/models/short_video.dart';
import 'package:bdb_challenge/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShortVideoPlayer extends StatefulWidget {
  const ShortVideoPlayer({
    required this.videoDate,
    super.key,
  });

  final ShortVideo videoDate;

  @override
  State<ShortVideoPlayer> createState() => _ShortVideoPlayerState();
}

class _ShortVideoPlayerState extends State<ShortVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late Future _initializeVideoPlayer;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.network(widget.videoDate.link);
    _initializeVideoPlayer = _videoPlayerController.initialize();
    _videoPlayerController.setLooping(true);
    _videoPlayerController.play();
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: FutureBuilder(
        future: _initializeVideoPlayer,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return VideoPlayer(
              _videoPlayerController,
            );
          } else {
            return const LottieLoadingWidget();
          }
        },
      ),
    );
  }
}
