import 'package:check_app/screens/userRegister/components/inputs.dart';
import 'package:check_app/viewModel/register_auth.dart';
import 'package:flutter/material.dart';

// the visual is pretty good
// I just need to start the authentication

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.teal[600], Colors.teal, Colors.teal[400]])),
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/login');
                    }),
                IconButton(
                    icon: Icon(Icons.save_alt_rounded),
                    onPressed: () {
                      doSignUp();
                    })
              ],
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
                height: MediaQuery.of(context).size.height * .75,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(150, 120),
                    bottomLeft: Radius.elliptical(150, 120),
                  ),
                ),
                child: InputUser(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
