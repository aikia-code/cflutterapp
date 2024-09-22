import 'package:flutter/material.dart';

class CFlutterAppHome extends StatelessWidget {
  const CFlutterAppHome({super.key});

  final String routeName = "/";

  final List names = const ["Booba", "Torry", "Reasal", "Crease"];

  @override
  Widget build(BuildContext context) {
    Color? forgroundColorFontIcon = Colors.orange[600];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        scrolledUnderElevation: 4,
        centerTitle: true,
        elevation: 0,
        shadowColor: Colors.green[900],
        backgroundColor: Colors.green[900],
        leading: Icon(
          Icons.menu,
          color: forgroundColorFontIcon,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
            color: forgroundColorFontIcon,
          ),
        ],
        titleTextStyle: TextStyle(
          color: forgroundColorFontIcon,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        title: const Text("CF . Home"),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text("${(index + 1).toString()}->"),
          title: Text("${names[index]}"),
          subtitle: Text("[...❤️]"),
        ),
      ),
    );
  }
}
