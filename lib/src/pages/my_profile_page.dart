import 'package:flutter/material.dart';
import 'package:prestamos_ibero/src/themes/text_styles.dart';
import 'package:prestamos_ibero/src/widgets/custom_card.dart';

class MyProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Préstamo de equipo'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () => Navigator.pushReplacementNamed(context, 'myCar')),
          IconButton(icon: Icon(Icons.logout), onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('login', (Route<dynamic> route) => false))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 10.0),
            Text('Mi perfil', style: mainTitle),
            CustomCard('assets/img/devoluciones.jpg', 'Devoluciones'),
            CustomCard('assets/img/grupo.jpg', 'Grupo de materiales'),
            CustomCard('assets/img/historial.jpg', 'Historial de préstamos'),
          ],
        )
      ),
    );
  }
}