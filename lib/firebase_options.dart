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
        return macos;
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
    apiKey: 'AIzaSyAMJlozsNwVXQwVLDpe43lsyEorqRjW-sc',
    appId: '1:679880888617:web:f69e0f083d62277927e738',
    messagingSenderId: '679880888617',
    projectId: 'msp-auth-b2163',
    authDomain: 'msp-auth-b2163.firebaseapp.com',
    storageBucket: 'msp-auth-b2163.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQPbVX0MOc6S3DwlT6qt_bA9gzkC-w6nc',
    appId: '1:679880888617:android:9ac47ca674ab10d827e738',
    messagingSenderId: '679880888617',
    projectId: 'msp-auth-b2163',
    storageBucket: 'msp-auth-b2163.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsTySX7FVXaH8WXcD7x7RmuTk9TCCXEYM',
    appId: '1:679880888617:ios:c3ad47f79b37489227e738',
    messagingSenderId: '679880888617',
    projectId: 'msp-auth-b2163',
    storageBucket: 'msp-auth-b2163.appspot.com',
    iosBundleId: 'com.example.auth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsTySX7FVXaH8WXcD7x7RmuTk9TCCXEYM',
    appId: '1:679880888617:ios:81f4572b022f9d7427e738',
    messagingSenderId: '679880888617',
    projectId: 'msp-auth-b2163',
    storageBucket: 'msp-auth-b2163.appspot.com',
    iosBundleId: 'com.example.auth.RunnerTests',
  );
}