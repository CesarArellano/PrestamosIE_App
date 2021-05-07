import 'package:flutter/material.dart';
import 'package:prestamos_ibero/src/themes/inputs_decorator.dart';
import 'package:prestamos_ibero/src/themes/text_styles.dart';

class CustomTopContent extends StatelessWidget {
  final String textTitle;
  final TextEditingController _inputSearchController = new TextEditingController();
  
  CustomTopContent(this.textTitle);

  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Text('${textTitle[0].toUpperCase()}${textTitle.substring(1)}', style: mainTitle)
        ),
        TextField(
          controller: _inputSearchController,
          style: searchInputText,
          decoration: decorationInputSearch('Buscar en $textTitle'),
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }
}