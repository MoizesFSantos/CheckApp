import 'package:flutter/material.dart';

class TaskInputs extends StatefulWidget {
  @override
  _TaskInputsState createState() => _TaskInputsState();
}

// I need to think more in this part
// what I gonna need

class _TaskInputsState extends State<TaskInputs> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.wysiwyg_rounded,
                    color: Colors.teal[200],
                  ),
                ),
                hintText: 'Task',
                border: OutlineInputBorder()),
          ),
        ],
      ),
    );
  }
}