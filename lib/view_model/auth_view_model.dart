
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authViewModel = ChangeNotifierProvider((ref) => AuthViewModel());
class AuthViewModel extends ChangeNotifier {


  TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController =>  _nameController;


  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }




}