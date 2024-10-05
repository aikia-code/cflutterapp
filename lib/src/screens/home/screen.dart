import 'package:flutter/material.dart';

import 'package:cflutterapp/src/screens/service/screen.dart';

class CFlutterAppHome extends StatelessWidget {
  const CFlutterAppHome({super.key});

  static const String routeName = "/home";
  final String pageLabel = "Home";

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
        child: TextButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, CFlutterServices.routeName);
          },
          style: TextButton.styleFrom(
            backgroundColor: themeBackgroundColorCool,
            alignment: Alignment.center,
            foregroundColor: themeForegroundColorHot,
            minimumSize: Size(200, 60),
            elevation: 0,
          ),
          icon: Icon(Icons.link_sharp),
          label: Text("Go to service"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: themeBackgroundColorCool,
        selectedItemColor: themeForegroundColorHot,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.link),
            label: "Service",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
