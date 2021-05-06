import 'package:flutter/material.dart';
import 'package:prestamos_ibero/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Préstamos IE Ibero',
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: HomePage(),
    );
  }
}