import 'package:awashderash/auth/fire_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

//import { getAuth, onAuthStateChanged } from "firebase/auth";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    initialRoute: '/',
    theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 2, 57, 144))),
    routes: {
      '/': (context) => const AuthGate(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
