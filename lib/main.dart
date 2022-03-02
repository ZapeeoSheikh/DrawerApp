import 'package:drawerapp/home.dart';
import 'package:drawerapp/newpage.dart';
import 'package:drawerapp/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        routes.nextpage: (context) => Newpage("New Page"),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS
            ? Colors.grey[50]
            : null,
      ),
      home: Homepage(),
    );
  }
}
