import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform,kIsWeb,TargetPlatform;
class DefaultFirebaseOptions {
  static FirebaseOptions? get currentPlatform {
    try {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          return android;
        case TargetPlatform.iOS:
          return ios;
        default:
          throw Exception('Unsupported platform: ${defaultTargetPlatform.name}');
      }
    } catch (error) {
      // Handle the error appropriately, e.g., log, display a message, etc.
      print('Error getting Firebase Options: $error');
      return null; // Or provide a default or fallback value
    }
  }

  static FirebaseOptions? get android => null;

  static FirebaseOptions? get ios => null;
}