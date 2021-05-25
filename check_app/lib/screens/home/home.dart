import 'package:check_app/screens/calendar/calendarScreen.dart';
import 'package:check_app/screens/profile/profile.dart';
import 'package:check_app/screens/tasks/tasks.dart';
import 'package:check_app/shared/components/navigation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final screens = [
    Center(
      child: Tasks(),
    ),
    Center(
      child: Calendar(),
    ),
    Center(
      child: ProfileScreen(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: DrawerMenu(),
      body: screens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    'Add new Task',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  content: TextFormField(
                    onChanged: (String value) {},
                  ),
                  actions: <Widget>[
                    IconButton(
                        color: Theme.of(context).primaryColor,
                        icon: Icon(Icons.send_rounded),
                        onPressed: () {
                          setState(() {
                            //
                          });
                        })
                  ],
                );
              });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
