import 'package:bdb_challenge/models/short_video.dart';
import 'package:bdb_challenge/providers/hotels_provider.dart';
import 'package:bdb_challenge/screens/components/main_hotels_viewer.dart';
import 'package:bdb_challenge/widgets/error_widget.dart';
import 'package:bdb_challenge/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(hotelsProvider).when(
      data: (List<ShortVideo> hotelVideos) {
        return MainHotelsViewer(hotelVideosList: hotelVideos);
      },
      error: (Object error, StackTrace stackTrace) {
        return const LottieErrorWidget();
      },
      loading: () {
        return const LottieLoadingWidget();
      },
    );
  }
}
