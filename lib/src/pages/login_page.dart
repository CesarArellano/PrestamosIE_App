import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _claveLogin = GlobalKey<FormState>();

  final TextEditingController _inputAccountController =
    new TextEditingController();

  final TextEditingController _inputPasswordController =
    new TextEditingController();

  List<String> _users = ['Alumno', 'Profesor', 'Laboratorista'];

  String _userSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          _loginCard()
        ],
      )
    );
  }

  Widget _background() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/backgroundT.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
        child: Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
        ),
      ),
    );
  }

  Widget _loginCard() {

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        width: double.infinity,
        height: 400.0,
        child: Card(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Iniciar Sesión', style: TextStyle(fontSize: 30.0,color: Colors.white)),
              _loginForm(),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.login),
                label: Text('Entrar'),                
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                ),

              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        key: _claveLogin,
        child: Column(
          children: [
            _inputAccount(),
            SizedBox(height: 10.0),
            _inputPassword(),
            SizedBox(height: 10.0),
            _userDrowpdown(),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }

  Widget _inputAccount() {
    return TextFormField(    
      keyboardType: TextInputType.name,
      controller: _inputAccountController,
    );
  }

  Widget _inputPassword() {
    return TextFormField( 
      controller: _inputPasswordController,
      obscureText: true,
    );
  }

  Widget _userDrowpdown() {
    return DropdownButtonFormField<String>(
      value: _userSelected,
      onChanged: (value) =>
          setState(() => _userSelected = value),
      validator: (value) =>
          value == null ? 'Campo requerido' : null,
      items: _users.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

