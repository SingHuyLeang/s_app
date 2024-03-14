import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:t_app/data/respositories/authentication/auth_repository.dart';
import 'package:t_app/firebase_option.dart';
import 'app.dart';

Future<void> main() async {
  // Todo: Add Widget Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // Todo: Init Local Storage
  await GetStorage.init();
  // Todo: Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Todo: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
          (FirebaseApp value) => Get.put(AuthRepository()),
  );
  // Todo: Initialize Authentication
  runApp(const App());
}
