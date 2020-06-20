import 'package:flutter/material.dart';
import 'package:ecommerce/pages/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, 
    theme: ThemeData(
      primaryColor: Colors.pink.shade900
    ),
    home: Login()));
}
