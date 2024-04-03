import 'package:aqib_port/firebase_options.dart';
import 'package:aqib_port/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCIH5pm71klUQvY_3t-qs6Zh_GqoAf50WI",
            authDomain: "portfolio-d6d35.firebaseapp.com",
            projectId: "portfolio-d6d35",
            storageBucket: "portfolio-d6d35.appspot.com",
            messagingSenderId: "239590987904",
            appId: "1:239590987904:web:090760a15c652055bc2e65",
            measurementId: "G-553GGMVD65"));
  } else {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.genrateRoute(settings),
      initialRoute: '/',
    );
  }
}
