// // File generated by FlutterFire CLI.
// // ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;

// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       throw UnsupportedError(
//         'DefaultFirebaseOptions have not been configured for web - '
//         'you can reconfigure this by running the FlutterFire CLI again.',
//       );
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for macos - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for windows - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }

//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'AIzaSyAFf1N8gIKWpVjcq8zPkDQslkSlZ6drMsw',
//     appId: '1:770102945430:android:61d72dc447e5938e3404b7',
//     messagingSenderId: '770102945430',
//     projectId: 'shadow-ic',
//     databaseURL: 'https://shadow-ic-default-rtdb.firebaseio.com',
//     storageBucket: 'shadow-ic.appspot.com',
//   );

//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'AIzaSyDxNdKOZu1ACyrLWZiy2qRtAbzns0ocFc4',
//     appId: '1:770102945430:ios:b4ff5caf4f4b66a83404b7',
//     messagingSenderId: '770102945430',
//     projectId: 'shadow-ic',
//     databaseURL: 'https://shadow-ic-default-rtdb.firebaseio.com',
//     storageBucket: 'shadow-ic.appspot.com',
//     androidClientId:
//         '770102945430-23ol804dg80jp0p96vm76p14106ebsik.apps.googleusercontent.com',
//     iosClientId:
//         '770102945430-pkds22b6uavjvc455n4aig2cesbhbjpf.apps.googleusercontent.com',
//     iosBundleId: 'com.shadow.service',
//   );
// }
