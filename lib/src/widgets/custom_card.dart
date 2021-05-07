import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String cardTitle;
  final String imageRoute;

  const CustomCard(this.imageRoute, this.cardTitle);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.0),
        Card(          
          margin: EdgeInsets.zero,
          elevation: 4.0,
          child: Container(
            child: Column(
              children: <Widget>[
                Ink.image(
                  image: AssetImage(imageRoute),
                  width: double.infinity,
                  height: 225.0,
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child:  Text(cardTitle, style: TextStyle(fontSize: 24.0)),
                ),
              ],
            )
          ),
        ),
        SizedBox(height: 15.0),
      ],
    );
  }
}