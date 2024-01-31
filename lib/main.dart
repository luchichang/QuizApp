import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './view/home_view.dart';
import './models/testModel.dart';

// globally declaring mq the Variable
late Size mq;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

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
              elevation: 0.0),
          brightness: Brightness.light,
        ));
  }
}
