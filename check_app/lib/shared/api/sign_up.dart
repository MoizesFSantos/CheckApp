import 'dart:convert';
import 'package:check_app/shared/constants/routes.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  signup(String email, String password) async {
    http.Response response = await http.post(
      Routes.urlSingUp,
      // the firebase's paramns
      body: json.encode(
          {"email": email, "password": password, "returnSecureToken": true}),
    );
    print(response.body);
  }
}