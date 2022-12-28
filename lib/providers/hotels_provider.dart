import 'package:bdb_challenge/models/short_video.dart';
import 'package:bdb_challenge/services/firebase_locater.dart';
import 'package:bdb_challenge/services/hotel_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateNotifierProvider<HotelAsyncNotifier, AsyncValue<List<ShortVideo>>>
    hotelsProvider =
    StateNotifierProvider<HotelAsyncNotifier, AsyncValue<List<ShortVideo>>>(
  (ref) => HotelAsyncNotifier(),
);

class HotelAsyncNotifier extends StateNotifier<AsyncValue<List<ShortVideo>>> {
  HotelAsyncNotifier() : super(const AsyncLoading()) {
    _intiState();
  }

  _intiState() async {
    try {
      final fetchedHotelsData = await getIt<HotelServices>().getShortVideos();
      state = AsyncData(fetchedHotelsData);
    } catch (error) {
      state = AsyncError(
        error,
        StackTrace.fromString('Catch ERROR: when getting Hotels Data'),
      );
    }
  }
}
