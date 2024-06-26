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
    apiKey: 'AIzaSyDi8ABAIkvkb418o1l9ObGpfeJcZ73mdL8',
    appId: '1:971150109046:web:f61aa313da215806233257',
    messagingSenderId: '971150109046',
    projectId: 'tapu-tapi-shop',
    authDomain: 'tapu-tapi-shop.firebaseapp.com',
    storageBucket: 'tapu-tapi-shop.appspot.com',
    measurementId: 'G-7M8B3KC5QF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2y2YiulPFjdBOBPlL4IvbMRtIBzj6GOI',
    appId: '1:971150109046:android:e70371efe573814b233257',
    messagingSenderId: '971150109046',
    projectId: 'tapu-tapi-shop',
    storageBucket: 'tapu-tapi-shop.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAV9GKePUiUg8lt7mGqgKZlcmbbw-ghlNk',
    appId: '1:971150109046:ios:f188e61df7463f68233257',
    messagingSenderId: '971150109046',
    projectId: 'tapu-tapi-shop',
    storageBucket: 'tapu-tapi-shop.appspot.com',
    iosBundleId: 'com.example.tapuTapiShop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAV9GKePUiUg8lt7mGqgKZlcmbbw-ghlNk',
    appId: '1:971150109046:ios:f188e61df7463f68233257',
    messagingSenderId: '971150109046',
    projectId: 'tapu-tapi-shop',
    storageBucket: 'tapu-tapi-shop.appspot.com',
    iosBundleId: 'com.example.tapuTapiShop',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDi8ABAIkvkb418o1l9ObGpfeJcZ73mdL8',
    appId: '1:971150109046:web:ffd7d73b2d795c0b233257',
    messagingSenderId: '971150109046',
    projectId: 'tapu-tapi-shop',
    authDomain: 'tapu-tapi-shop.firebaseapp.com',
    storageBucket: 'tapu-tapi-shop.appspot.com',
    measurementId: 'G-CE8WHBM1ZN',
  );
}
