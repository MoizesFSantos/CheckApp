import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  // bottomRight: Radius.circular(-30),
                ),
                color: Theme.of(context).primaryColor,
              ),
            ),
            Positioned(
              bottom: -50,
              child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/150')),
            ),
          ],
        )
      ],
    );
  }
}
