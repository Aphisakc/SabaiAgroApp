import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabai_agro_product_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
