// ignore_for_file: unused_import, unnecessary_const

import 'package:cozy/pages/splash_page.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart'; // ini untuk libraryy

// ngejalanin funcion fungsi dari myApp (optional)
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
