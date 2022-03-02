import 'package:flutter/material.dart';

class Newpage extends StatelessWidget {
  final String title;

  Newpage(this.title);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          // elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Text('This is my ${title}'),
        ),
      ),
    );
  }
}
