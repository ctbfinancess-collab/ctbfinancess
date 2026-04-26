import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDqjONHxKFQ6qHOrkNL607VncI8hBbrig",
            authDomain: "ctb-financess.firebaseapp.com",
            projectId: "ctb-financess",
            storageBucket: "ctb-financess.firebasestorage.app",
            messagingSenderId: "311075525581",
            appId: "1:311075525581:web:89ba3b29a6326644b96a84",
            measurementId: "G-CPTZPCBM64"));
  } else {
    await Firebase.initializeApp();
  }
}
