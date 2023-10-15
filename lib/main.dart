import 'package:awashderash/apps/school/controller/DocumentController.dart';
import 'package:awashderash/apps/todo/presentation/pages/todo_home.dart';
import 'package:awashderash/auth/fire_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'package:awashderash/apps/school/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.find<DocumentController>().getDocumentList();
  //Get.find<BranchServiceController>().getServiceList();

  runApp(GetMaterialApp(
    theme: ThemeData()
        .copyWith(useMaterial3: true, colorScheme: ColorScheme.fromSwatch()
            // ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 45, 1, 57)),
            ),
    initialRoute: '/',
    routes: {
      '/': (context) => const AuthGate(),
      '/todo': (context) => const TodoHome(),
      '/school': (context) => const TodoHome(),
      '/travel': (context) => const TodoHome(),
      '/book': (context) => const TodoHome(),
      '/movie': (context) => const TodoHome(),
      '/chat': (context) => const TodoHome(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
