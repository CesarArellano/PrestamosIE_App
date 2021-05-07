import 'package:flutter/material.dart';
import 'package:prestamos_ibero/src/pages/tabsContent/biomedic_tab.dart';
import 'package:prestamos_ibero/src/pages/tabsContent/electronics_tab.dart';
import 'package:prestamos_ibero/src/pages/tabsContent/mechanics_tab.dart';

class GeneralMaterialPage extends StatefulWidget {
  @override
  _GeneralMaterialPageState createState() => _GeneralMaterialPageState();
}

class _GeneralMaterialPageState extends State<GeneralMaterialPage> {
  Widget typeContent;

  @override
  Widget build(BuildContext context) {
    final int carrierId = ModalRoute.of(context).settings.arguments;
    
    switch(carrierId) {
      case 0:
        typeContent = ElectronicsTabView('material', false);
        break;
      case 1:
        typeContent = BiomedicTabView('material', false);
        break;
      case 2:
        typeContent = MechanicsTabView('material', false);
        break;
      default:
        typeContent = ElectronicsTabView('material', false);
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Préstamo de equipo'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () => Navigator.pushNamed(context, 'myCar')),
          IconButton(icon: Icon(Icons.person), onPressed: () => Navigator.pushReplacementNamed(context, 'myProfile')),
          IconButton(icon: Icon(Icons.logout), onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('login', (Route<dynamic> route) => false))
        ],
      ),
      body: typeContent
    );
  }
}