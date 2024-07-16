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
    apiKey: 'AIzaSyBLFM5KcMChb7THw7pJCA7YNNo9ngypej0',
    appId: '1:343918885580:web:80e2b1a6c60d7a11352069',
    messagingSenderId: '343918885580',
    projectId: 'todolist-dc02c',
    authDomain: 'todolist-dc02c.firebaseapp.com',
    storageBucket: 'todolist-dc02c.appspot.com',
    measurementId: 'G-DERBFBP506',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSQgOM2JJn1lLQiZnORfA_OfA9L9499iI',
    appId: '1:343918885580:android:e9eae19ee7b3b7db352069',
    messagingSenderId: '343918885580',
    projectId: 'todolist-dc02c',
    storageBucket: 'todolist-dc02c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4aP77BngeWFxfhPkB9GkcEGmJnYCDZas',
    appId: '1:343918885580:ios:2c3a5c2188ad79b2352069',
    messagingSenderId: '343918885580',
    projectId: 'todolist-dc02c',
    storageBucket: 'todolist-dc02c.appspot.com',
    iosBundleId: 'com.example.toDoListApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4aP77BngeWFxfhPkB9GkcEGmJnYCDZas',
    appId: '1:343918885580:ios:2c3a5c2188ad79b2352069',
    messagingSenderId: '343918885580',
    projectId: 'todolist-dc02c',
    storageBucket: 'todolist-dc02c.appspot.com',
    iosBundleId: 'com.example.toDoListApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBLFM5KcMChb7THw7pJCA7YNNo9ngypej0',
    appId: '1:343918885580:web:9a05c9a90af1dae7352069',
    messagingSenderId: '343918885580',
    projectId: 'todolist-dc02c',
    authDomain: 'todolist-dc02c.firebaseapp.com',
    storageBucket: 'todolist-dc02c.appspot.com',
    measurementId: 'G-R4KTCLHYNC',
  );
}
