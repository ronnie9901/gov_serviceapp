import 'package:flutter/material.dart';
import 'package:gov_serviceapp/homepage.dart';
import 'package:gov_serviceapp/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConnectivityScreen()
    );
  }
}


