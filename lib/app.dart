import 'package:flutter/material.dart';
import 'package:cflutterapp/screens/home/screen.dart';

class CFlutterApp extends StatelessWidget {
  const CFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.orangeAccent,
      home: CFlutterAppHome(),
    );
  }
}
