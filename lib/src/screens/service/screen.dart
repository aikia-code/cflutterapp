import 'package:flutter/material.dart';

class CFlutterServices extends StatelessWidget {
  const CFlutterServices({super.key});

  final String pageLabel = "Service";
  static const String routeName = "/service";

  @override
  Widget build(BuildContext context) {
    Color? themeForegroundColorHot = Colors.orange[600];
    Color? themeBackgroundColorCool = Colors.green[900];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        scrolledUnderElevation: 4,
        centerTitle: true,
        elevation: 0,
        shadowColor: themeForegroundColorHot,
        backgroundColor: themeBackgroundColorCool,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
            color: themeForegroundColorHot,
          ),
        ],
        titleTextStyle: TextStyle(
          color: themeForegroundColorHot,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        title: Text(pageLabel),
        foregroundColor: themeForegroundColorHot,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: themeBackgroundColorCool,
          ),
          child: Icon(
            Icons.settings,
            color: themeForegroundColorHot,
            size: 100,
          ),
        ),
      ),
    );
  }
}
