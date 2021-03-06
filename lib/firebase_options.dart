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
    apiKey: 'AIzaSyAXEaLE8lfLDhEkl3Pqx2rSsGU-NnIYpt8',
    appId: '1:395878868739:web:de4c22d57e3926e6166b36',
    messagingSenderId: '395878868739',
    projectId: 'zoom-app-f169a',
    authDomain: 'zoom-app-f169a.firebaseapp.com',
    storageBucket: 'zoom-app-f169a.appspot.com',
    measurementId: 'G-L5RYQK3ZHV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvgoxlwXMtf4haDSzQgkcQMczejqBVKWA',
    appId: '1:395878868739:android:26d24373b1fb3523166b36',
    messagingSenderId: '395878868739',
    projectId: 'zoom-app-f169a',
    storageBucket: 'zoom-app-f169a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7GLATKWdIT4m8oWx--x8yamV-r5PoCKE',
    appId: '1:395878868739:ios:c1a32ceebc02e3a2166b36',
    messagingSenderId: '395878868739',
    projectId: 'zoom-app-f169a',
    storageBucket: 'zoom-app-f169a.appspot.com',
    iosClientId: '395878868739-s1u36ljl1cj79amf41ie75mpsfvm8e62.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomApp',
  );
}
