import 'package:awashderash/main/main_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//import { getAuth, onAuthStateChanged } from "firebase/auth";
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(

      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainHome(),)

  );
}

