import 'package:check_app/shared/api/sign_In.dart';
import 'package:flutter/material.dart';

final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
final _loginEmail = TextEditingController();
final _loginPassword = TextEditingController();

final getEmail = _loginEmail;
final getPassword = _loginPassword;

String validaLogin(String texto) {
  if (texto.isEmpty) {
    return "Invalide Email Adress";
  }
  return null;
}

String validaPass(String texto) {
  if (texto.isEmpty || texto.length < 6) {
    return "Invalide Password";
  }
  return null;
}

void loginSucess(BuildContext context) {
  if (loginKey.currentState.validate()) {
    LoginService().login(getEmail.text, getPassword.text);
    _navigateSucess(context);
  }else{
    
  }
}

_navigateSucess(BuildContext context) =>
    Navigator.of(context).pushReplacementNamed('/home');
