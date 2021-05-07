import 'dart:math';
import 'package:flutter/material.dart';

class MyCarPage extends StatelessWidget {
  final randomNumber = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Préstamo de equipo'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.person), onPressed: () => Navigator.pushReplacementNamed(context, 'myProfile')),
          IconButton(icon: Icon(Icons.logout), onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('login', (Route<dynamic> route) => false))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 20.0),
            Text('Solicitud de materiales', style: TextStyle(fontSize: 30.0, fontWeight:  FontWeight.bold)),
            SizedBox(height: 10.0),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 2.0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Column(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        
                        if(index > 0) {
                          return ListTile(
                            onTap: () {},
                            title: Text('Material $index'),
                            trailing: Text(randomNumber.nextInt(20).toString()),
                          );                  
                        } else {
                          return ListTile(
                            title: Text('Descripción', style: TextStyle(fontSize: 20.0)),
                            trailing: Text('Cantidad', style: TextStyle(fontSize: 20.0)),
                          );
                        }
                      }
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 140.0,
                      height: 40.0,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red                        
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.save), 
                        label: Text('Solicitar')
                      ),
                    ),
                    SizedBox(height: 10.0),
                  ],              
                ),
              ),
            ),            
          ],
        ),
      )
    );
  }
}