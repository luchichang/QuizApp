import 'package:flutter/material.dart';

import './view/home_view.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

// creating mq variable

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: Colors.white,
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 20.0),
              elevation: 0.0)),
    );
  }
}
