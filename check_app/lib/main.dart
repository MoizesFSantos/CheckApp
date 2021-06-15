import 'package:check_app/screens/loginForm/login.dart';
import 'package:check_app/screens/newTask/newTask.dart';
import 'package:check_app/screens/userRegister/user_register.dart';
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
        initialRoute: '/login',
        routes: {
          '/login': (context) => Login(),
          '/home': (context) => Home(),
          '/register': (context) => Register(),
          '/taskRegister': (context) => NewTask(),

        });
  }
}
