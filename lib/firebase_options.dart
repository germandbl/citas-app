// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCGHOoPgU_TA-TAoFE1Y4y4myMsku3nUUM',
    appId: '1:752102045577:web:98d6120c86283ca5485358',
    messagingSenderId: '752102045577',
    projectId: 'citas-app-a2694',
    authDomain: 'citas-app-a2694.firebaseapp.com',
    storageBucket: 'citas-app-a2694.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzFUsNXr6ZNOm2AMtNAO0xySBAIpXdpSA',
    appId: '1:752102045577:android:120c25b9ff2d030c485358',
    messagingSenderId: '752102045577',
    projectId: 'citas-app-a2694',
    storageBucket: 'citas-app-a2694.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLcGypEsudJ4m1oaoZsRYZK-86f6PgfS8',
    appId: '1:752102045577:ios:3679383034e35583485358',
    messagingSenderId: '752102045577',
    projectId: 'citas-app-a2694',
    storageBucket: 'citas-app-a2694.appspot.com',
    iosBundleId: 'com.example.citasApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDLcGypEsudJ4m1oaoZsRYZK-86f6PgfS8',
    appId: '1:752102045577:ios:3679383034e35583485358',
    messagingSenderId: '752102045577',
    projectId: 'citas-app-a2694',
    storageBucket: 'citas-app-a2694.appspot.com',
    iosBundleId: 'com.example.citasApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCGHOoPgU_TA-TAoFE1Y4y4myMsku3nUUM',
    appId: '1:752102045577:web:16e60b0e43601c16485358',
    messagingSenderId: '752102045577',
    projectId: 'citas-app-a2694',
    authDomain: 'citas-app-a2694.firebaseapp.com',
    storageBucket: 'citas-app-a2694.appspot.com',
  );
}
