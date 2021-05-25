import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  final todos = List<String>.generate(20, (index) => 'Item ${index + 1}');
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            onDismissed: (direction) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${todos[index]} dismissed')));
            },
            key: Key(todos[index]),
            child: Card(
              elevation: 3,
              child: ListTile(
                title: Text('${todos[index]}'),
              ),
            ),
          );
        });
  }
}
