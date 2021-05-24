import 'package:check_app/screens/calendar/calendarScreen.dart';
import 'package:check_app/screens/profile/profile.dart';
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
        primarySwatch: Colors.blueGrey
      ),
       initialRoute: '/',
      routes: {
        '/':(context)=>Home(),
        '/profile':(context)=> ProfileScreen(),
        '/calendar':(context)=> Calendar(),
      }
    );
  }
}

