// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/foundation.dart';
// import 'package:service_app/core/firebase/firmware_model/firmware_model.dart';

// import 'model/user.dart';

// class FirebaseRepo {
//   static final auth = FirebaseAuth.instance;

//   static User? get firebaseUser => auth.currentUser;
// //TODO failures
//   ShadowUser? shadowUser;
//   Future<ShadowUser?> getUser() async {
//     if (auth.currentUser != null) {
//       final ref = FirebaseDatabase.instance.ref();
//       final snapshot = await ref.child('users/${auth.currentUser!.uid}').get();
//       if (snapshot.value != null) {
//         shadowUser = ShadowUser.fromJson(
//             (snapshot.value as Map<Object?, Object?>).cast<String, dynamic>());
//         return shadowUser;
//       } else {
//         return null;
//       }
//     } else {
//       return null;
//     }
//   }

//   Future<void> createUser(ShadowUser shadowUser) async {
//     if (auth.currentUser != null) {
//       DatabaseReference ref =
//           FirebaseDatabase.instance.ref("users/${auth.currentUser!.uid}");
//       await ref.set(shadowUser.toJson());
//     }
//   }

//   Future<FirmwareModel> getFirmwareModel() async {
//     if (auth.currentUser != null) {
//       final ref = FirebaseDatabase.instance.ref();
//       final snapshot = await ref.child('firmwares/').get();
//       if (snapshot.value != null) {
//         final result =
//             (snapshot.value as Map<Object?, Object?>).cast<String, dynamic>();
//         return FirmwareModel.fromJson(result);
//       } else {
//         return FirmwareModel([]);
//       }
//     } else {
//       return FirmwareModel([]);
//     }
//   }

//   String getFrimwareName(String link) {
//     final gsReference = FirebaseStorage.instance.refFromURL(link);
//     final name = gsReference.name;

//     return name;
//   }

//   Future<Uint8List> downloadFrimware(String link) async {
//     final gsReference = FirebaseStorage.instance.refFromURL(link);
//     final bytes = await gsReference.getData();
//     if (bytes == null) {
//       return Uint8List(0);
//     }
//     return bytes;
//   }

//   Future<void> deleteUser() async {
//     if (auth.currentUser != null) {
//       DatabaseReference ref =
//           FirebaseDatabase.instance.ref("users/${auth.currentUser!.uid}");
//       await ref.remove();
//       await firebaseUser?.delete();
//     }
//   }

//   Future<void> updateUser(ShadowUser shadowUser) async {
//     if (auth.currentUser != null) {
//       DatabaseReference ref =
//           FirebaseDatabase.instance.ref("users/${auth.currentUser!.uid}");
//       await ref.update(shadowUser.toJson());
//     }
//   }
// }
