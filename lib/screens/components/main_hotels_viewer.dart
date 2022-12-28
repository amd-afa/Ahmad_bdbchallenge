import 'package:bdb_challenge/models/short_video.dart';
import 'package:bdb_challenge/screens/components/video_player.dart';
import 'package:bdb_challenge/screens/components/video_tile.dart';
import 'package:flutter/material.dart';

class MainHotelsViewer extends StatelessWidget {
  const MainHotelsViewer({
    required this.hotelVideosList,
    Key? key,
  }) : super(key: key);

  final List<ShortVideo> hotelVideosList;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: hotelVideosList.length,
      itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ShortVideoPlayer(
              videoDate: hotelVideosList[index],
            ),
            VideoTile(
              videoTitle: hotelVideosList[index].name,
            ),
          ],
        );
      },
    );
  }
}
