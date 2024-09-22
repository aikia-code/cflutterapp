import 'package:cflutterapp/screens/service/screen.dart';
import 'package:flutter/material.dart';

class CFlutterAppHome extends StatelessWidget {
  const CFlutterAppHome({super.key});

  final String routeName = "/";
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
        leading: Icon(
          Icons.menu,
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CFlutterServices(),
              ),
            );
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
    );
  }
}
