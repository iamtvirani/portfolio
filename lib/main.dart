// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prtfolio_web/form.dart';
import 'package:prtfolio_web/home.dart';


import 'routes.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        formRoute: (context) => const FormScreen(),
        homeRoute: (context) => const Home(),
       
      },

      debugShowCheckedModeBanner: false,
      title: "Tulsi",
      home: Home(),
    );
  }
}