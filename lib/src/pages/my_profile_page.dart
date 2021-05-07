import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Préstamo de equipo'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () => Navigator.pushReplacementNamed(context, 'myCar')),
          IconButton(icon: Icon(Icons.logout), onPressed: (){})
        ],
      ),
      body: Center(
        child: Text('Mi Perfil'),
      ),
    );
  }
}