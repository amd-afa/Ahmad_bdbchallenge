import 'package:bdb_challenge/models/short_video.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HotelServices {
  final FirebaseFirestore _firestore;

  HotelServices(this._firestore);

  Future<List<ShortVideo>> getShortVideos() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await _firestore.collection('hotels').get();
    await Future.delayed(const Duration(seconds: 2));
    List<ShortVideo> shortVideos = querySnapshot.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) =>
            ShortVideo.fromDocument(doc))
        .toList();
    return shortVideos;
  }
}
