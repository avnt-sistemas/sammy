import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAP7N3HlrxKm8gpS8ypcYQXFQYnExgHTfs",
            authDomain: "sammy-db9c8.firebaseapp.com",
            projectId: "sammy-db9c8",
            storageBucket: "sammy-db9c8.appspot.com",
            messagingSenderId: "1007140411788",
            appId: "1:1007140411788:web:8a411242117999c1455ea9",
            measurementId: "G-LNMB52WVGL"));
  } else {
    await Firebase.initializeApp();
  }
}
