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
    apiKey: 'AIzaSyCW0dMft3REXeeftoEV9pqOK4ZCxUOvfdk',
    appId: '1:869444322889:web:0a80c09e053cedced02198',
    messagingSenderId: '869444322889',
    projectId: 'flutterauthsanber',
    authDomain: 'flutterauthsanber.firebaseapp.com',
    storageBucket: 'flutterauthsanber.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOjwwKiGJEKrOJ4GSDVsWdfUPIWxjXhPU',
    appId: '1:869444322889:android:4fb6d78015c26d1fd02198',
    messagingSenderId: '869444322889',
    projectId: 'flutterauthsanber',
    storageBucket: 'flutterauthsanber.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFjsGNVb2HiRzUjBuRzzIrUR0ntfaomW4',
    appId: '1:869444322889:ios:c1589091235916e4d02198',
    messagingSenderId: '869444322889',
    projectId: 'flutterauthsanber',
    storageBucket: 'flutterauthsanber.firebasestorage.app',
    iosBundleId: 'com.example.sanberappflutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFjsGNVb2HiRzUjBuRzzIrUR0ntfaomW4',
    appId: '1:869444322889:ios:c1589091235916e4d02198',
    messagingSenderId: '869444322889',
    projectId: 'flutterauthsanber',
    storageBucket: 'flutterauthsanber.firebasestorage.app',
    iosBundleId: 'com.example.sanberappflutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCW0dMft3REXeeftoEV9pqOK4ZCxUOvfdk',
    appId: '1:869444322889:web:7eefdf08d3baecacd02198',
    messagingSenderId: '869444322889',
    projectId: 'flutterauthsanber',
    authDomain: 'flutterauthsanber.firebaseapp.com',
    storageBucket: 'flutterauthsanber.firebasestorage.app',
  );
}