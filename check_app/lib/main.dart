import 'package:flutter/material.dart';
import './screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          primaryColor: Colors.teal[400],
        ),
        initialRoute: '/home',
        routes: {
          '/home': (context) => Home(),
        });
  }
}
