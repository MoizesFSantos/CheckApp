import 'package:check_app/screens/newTask/components/inputs.dart';
import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF009688),
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(icon: Icon(Icons.save_alt_rounded), onPressed: () {})
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 70,horizontal: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(150, 120),
          ),
        ),
        child: TaskInputs(),
      ),
    );
  }
}
