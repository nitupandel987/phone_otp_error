import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IELTS Speaking',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey),
          labelStyle: TextStyle(color: Colors.grey),
        ),
        snackBarTheme: SnackBarThemeData(
          actionTextColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData.dark(), // standard dark theme
      themeMode: ThemeMode.system,
      home: LoginPage(),
    );
  }
}
