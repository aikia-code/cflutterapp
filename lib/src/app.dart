import 'package:flutter/material.dart';

import 'package:cflutterapp/src/screens/service/screen.dart';
import 'package:cflutterapp/src/screens/home/screen.dart';

class CFlutterApp extends StatelessWidget {
  const CFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.orangeAccent,
      home: CFlutterAppHome(),
      routes: {
        '/home': (context) => CFlutterAppHome(),
        '/service': (context) => CFlutterServices(),
      },
    );
  }
}
