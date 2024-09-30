import 'package:cflutterapp/src/screens/service/screen.dart';
import 'package:flutter/material.dart';

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
      drawer: Drawer(
        backgroundColor: themeBackgroundColorCool,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.account_balance_sharp,
                color: themeForegroundColorHot,
              ),
            ),
            ListTile(
              iconColor: themeForegroundColorHot,
              textColor: themeForegroundColorHot,
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, CFlutterAppHome.routeName);
              },
            ),
            ListTile(
              iconColor: themeForegroundColorHot,
              textColor: themeForegroundColorHot,
              title: Text("Service"),
              leading: Icon(Icons.link_sharp),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, CFlutterServices.routeName);
              },
            )
          ],
        ),
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
    );
  }
}
