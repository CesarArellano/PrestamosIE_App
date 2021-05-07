import 'package:flutter/material.dart';

// Routes
import 'package:prestamos_ibero/src/pages/login_page.dart';
import 'package:prestamos_ibero/src/pages/home_page.dart';
import 'package:prestamos_ibero/src/pages/my_car_page.dart';
import 'package:prestamos_ibero/src/pages/my_profile_page.dart';

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
      initialRoute: 'login',
      routes: {
        'login': (_) => LoginPage(),
        'home': (_) => HomePage(),
        'myProfile': (_) => MyProfilePage(),
        'myCar': (_) => MyCarPage()
      },
    );
  }
}