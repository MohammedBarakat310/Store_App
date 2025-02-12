import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_app/screens/homePage.dart';

void main() {
  runApp(const Store_app());
}

class Store_app extends StatelessWidget {
  const Store_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
