import 'package:flutter/material.dart';

class ElectronicsTabs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return _customCard(index);
        }
      ),
    );
  }

  Widget _customCard(int i) {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://serviciostecnicosmovil.com/wp-content/uploads/2019/09/electronica.jpg'),
            placeholder: AssetImage('assets/img/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 100),
            width: double.infinity,
            height: 275.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Categoría ${i + 1}', style: TextStyle(fontSize: 24.0)),
                SizedBox(height: 10.0),
                Text('Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vitae, dolorum. Consectetur nemo iusto dolor inventore dignissimos vitae, aspernatur est, nulla a odio temporibus, minus placeat non qui dolores fugiat quas.',
                  textAlign: TextAlign.justify
                ),
                SizedBox(height: 15.0),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {}, icon: Icon(Icons.remove_red_eye), label: Text('Detalles'),
                  ),
                )

              ],
            ),
          ),
        ],
      )
    );

    return Column(
      children: [
        SizedBox(height: 15.0),
        Card(          
          margin: EdgeInsets.zero,
          elevation: 4.0,
          child: card,
        ),
        SizedBox(height: 15.0),
      ],
    );
  }
}