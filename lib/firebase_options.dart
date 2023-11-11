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
    apiKey: 'AIzaSyAE_cSx8NT5zkCtbHaaJLldj9rNbAaiMXY',
    appId: '1:581403921048:web:19508fa8f7e7b5d886deed',
    messagingSenderId: '581403921048',
    projectId: 'blood-donation-5f5f4',
    authDomain: 'blood-donation-5f5f4.firebaseapp.com',
    storageBucket: 'blood-donation-5f5f4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGLTytBRTAE67MhbZ2rx2H1NOEVkFkx44',
    appId: '1:581403921048:android:2eb45c05e299b0c486deed',
    messagingSenderId: '581403921048',
    projectId: 'blood-donation-5f5f4',
    storageBucket: 'blood-donation-5f5f4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbE4RD3E6ztsL-V0ROvaz_NL2c1ROAkZA',
    appId: '1:581403921048:ios:35e86591c83913ba86deed',
    messagingSenderId: '581403921048',
    projectId: 'blood-donation-5f5f4',
    storageBucket: 'blood-donation-5f5f4.appspot.com',
    iosBundleId: 'com.example.bloodDonation',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbE4RD3E6ztsL-V0ROvaz_NL2c1ROAkZA',
    appId: '1:581403921048:ios:35e86591c83913ba86deed',
    messagingSenderId: '581403921048',
    projectId: 'blood-donation-5f5f4',
    storageBucket: 'blood-donation-5f5f4.appspot.com',
    iosBundleId: 'com.example.bloodDonation',
  );
}