// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAmUWtBb4nOjvr7kuvbTytJsnRFTq0bRZE',
    appId: '1:461032883355:web:e2d802a69f915cd747723e',
    messagingSenderId: '461032883355',
    projectId: 'flutterfirebaseprojectone',
    authDomain: 'flutterfirebaseprojectone.firebaseapp.com',
    storageBucket: 'flutterfirebaseprojectone.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFlB2sLVxcvBUjkyVendECSW1luCIhcFQ',
    appId: '1:461032883355:android:29ccf25d54e86bf647723e',
    messagingSenderId: '461032883355',
    projectId: 'flutterfirebaseprojectone',
    storageBucket: 'flutterfirebaseprojectone.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjTu3TnyAD_CYVyolrAQhis-VYDsef6c8',
    appId: '1:461032883355:ios:3a8065d1630a5f9547723e',
    messagingSenderId: '461032883355',
    projectId: 'flutterfirebaseprojectone',
    storageBucket: 'flutterfirebaseprojectone.appspot.com',
    iosBundleId: 'com.example.flutterscndpractice',
  );
}