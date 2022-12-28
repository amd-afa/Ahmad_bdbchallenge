import 'package:flutter/material.dart';

class VideoTile extends StatelessWidget {
  const VideoTile({
    required this.videoTitle,
    super.key,
  });
  final String videoTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 22),
      child: Row(
        children: <Widget>[
          Text(
            videoTitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: Colors.white54,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.music_note,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
