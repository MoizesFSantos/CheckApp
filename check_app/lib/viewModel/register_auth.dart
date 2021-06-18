import 'package:check_app/shared/api/sign_up.dart';
import 'package:flutter/material.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final _registerName = TextEditingController();
final _registerEmail = TextEditingController();
final _registerPassword = TextEditingController();
final _confirmPassword = TextEditingController();

final getName = _registerName;
final getEmail = _registerEmail;
final getPass = _registerPassword;
final getPassConfirm = _confirmPassword;

String emailValidation(String text) {
  if (text.isEmpty) {
    return 'email adress invalid';
  } else {
    return null;
  }
}

String passValidation(String pass) {
  if (pass.isEmpty) {
    return 'cannot be empty';
  } else if (pass.length < 6) {
    return ' too short';
  } else {
    return null;
  }
}

void doSignUp() {
  if (formKey.currentState.validate()) {
    SignUpService().signup(getEmail.text, getPass.text);
    
  }
}