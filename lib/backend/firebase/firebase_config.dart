import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDiI3BiEWkfTwP5JnCSfdFofxK-IxFofWo",
            authDomain: "amethyst-i05act.firebaseapp.com",
            projectId: "amethyst-i05act",
            storageBucket: "amethyst-i05act.appspot.com",
            messagingSenderId: "389572127725",
            appId: "1:389572127725:web:c1398cad6b2a33f409d5e4"));
  } else {
    await Firebase.initializeApp();
  }
}
