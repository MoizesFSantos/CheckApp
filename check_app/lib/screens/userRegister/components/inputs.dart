import 'package:check_app/viewModel/register_auth.dart';
import 'package:flutter/material.dart';

class InputUser extends StatefulWidget {
  @override
  _InputUserState createState() => _InputUserState();
}

class _InputUserState extends State<InputUser> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: getName,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.person,
                    color: Colors.teal[200],
                  ),
                ),
                hintText: 'Name',
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          TextFormField(
            controller: getEmail,
            validator: emailValidation,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.email,
                    color: Colors.teal[200],
                  ),
                ),
                hintText: 'Email',
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          TextFormField(
            controller: getPass,
            validator: passValidation,
            keyboardType: TextInputType.emailAddress,
            obscureText: showPassword,
            decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.vpn_key,
                    color: Colors.teal[200],
                  ),
                ),
                hintText: 'Password',
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          TextFormField(
            controller: getPassConfirm,
            obscureText: showPassword,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.vpn_key,
                    color: Colors.teal[200],
                  ),
                ),
                hintText: 'Confirm Password',
                border: OutlineInputBorder()),
          ),
          Row(
            children: [
              Checkbox(
                  checkColor: Colors.white,
                  value: showPassword,
                  onChanged: (value) {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  }),
              Text(
                'Hide Passord',
                style:
                    TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
