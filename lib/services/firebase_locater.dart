import 'package:bdb_challenge/services/firebase_options.dart';
import 'package:bdb_challenge/services/hotel_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

registeredServices() {
  getIt.registerSingleton(HotelServices(FirebaseFirestore.instance));
}

Future<void> initServices() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  registeredServices();
}
