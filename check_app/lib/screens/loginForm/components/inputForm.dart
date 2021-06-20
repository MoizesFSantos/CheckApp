import 'package:check_app/viewModel/log_auth.dart';
import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginKey,
      child: Column(
        children: [
          TextFormField(
            controller: getEmail,
            validator: validaLogin,
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
            height: MediaQuery.of(context).size.height * .02,
          ),
          TextFormField(
            controller: getPassword,
            validator: validaPass,
            obscureText: obscureText,
            decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  // change the password's visivility
                  child: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.teal[200],
                  ),
                ),
                hintText: 'Password',
                border: OutlineInputBorder()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Forgot your password?'))
            ],
          ),
          ElevatedButton(
            onPressed: () {
              loginSuccess(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.login,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
