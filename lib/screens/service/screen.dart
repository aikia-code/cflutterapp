import 'package:flutter/material.dart';

class CFlutterServices extends StatelessWidget {
  const CFlutterServices({super.key});

  final String pageLabel = "Service";

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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
          color: themeForegroundColorHot,
        ),
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
      ),
      body: Center(
        child: TextButton.icon(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: themeBackgroundColorCool,
            alignment: Alignment.center,
            foregroundColor: themeForegroundColorHot,
            minimumSize: Size(200, 60),
            elevation: 0,
          ),
          icon: Icon(Icons.link_sharp),
          label: Text("Stay!"),
        ),
      ),
    );
  }
}
