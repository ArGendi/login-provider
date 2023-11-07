import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  String? email;
  String? password;

  void setAuth(String newEmail, String newPass){
    email = newEmail;
    password = newPass;
    notifyListeners();
  }

  void setEmail(String newEmail){
    email = newEmail;
    notifyListeners();
  }

  void setPass(String newPass){
    email = newPass;
    notifyListeners();
  }
}