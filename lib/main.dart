// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pro/checkout.dart';
import 'package:pro/screens/reserved.dart';
import 'screens/pop.dart';
// import 'package:pro/screens/reserved.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkout();
    return Screen();
  }
}
