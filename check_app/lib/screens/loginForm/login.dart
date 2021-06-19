import 'package:check_app/screens/loginForm/components/inputForm.dart';
import 'package:flutter/material.dart';

// the visual is pretty good
// I just need to start the authentication

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Colors.teal[600],
            Colors.teal,
            Colors.teal[400]
          ]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .15,
              ),
              Text(
                'Check App.',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Stint Ultra Condensed',
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
                height: MediaQuery.of(context).size.height * .62,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(150, 120),
                    bottomLeft: Radius.elliptical(150, 120),
                  ),
                ),
                child: InputForm(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Did you not have an account yet? ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                       Navigator.of(context).pushReplacementNamed('/register');
                    },
                    child: Text(
                      'Click Here!',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Stint Ultra Condensed',
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
