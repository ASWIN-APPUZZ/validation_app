import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:validation_app/conference.dart';
import 'package:validation_app/conference_user.dart';
import 'package:validation_app/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conference Management System',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: Conference_User(),
    );
  }
}