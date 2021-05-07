import 'package:flutter/material.dart';

class MyCarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Préstamo de equipo'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.person), onPressed: () => Navigator.pushReplacementNamed(context, 'myProfile')),
          IconButton(icon: Icon(Icons.logout), onPressed: (){})
        ],
      ),
      body: Center(
        child: Text('Solicitud de materiales'),
      ),
    );
  }
}