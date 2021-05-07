import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prestamos_ibero/src/themes/inputs_decorator.dart';
import 'package:prestamos_ibero/src/themes/text_styles.dart';

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

  String _userSelected = 'Alumno';

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
        height: 450.0,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/logoIBERO.png',
                width: 120.0,  
              ),
              SizedBox(height: 20.0),
              Text('Iniciar Sesión', style: TextStyle(fontSize: 30.0,color: Colors.white)),
              _loginForm(),
              _loginButton()
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
            SizedBox(height: 20.0),
            _inputAccount(),
            SizedBox(height: 10.0),
            _inputPassword(),
            SizedBox(height: 10.0),
            _userDrowpdown(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _inputAccount() {
    return TextFormField(
      style: loginInputText,
      decoration: decorationInputSmall('No. de cuenta'),
      keyboardType: TextInputType.name,
      controller: _inputAccountController,
      validator: (value) {
        if(value.isEmpty) {
          return 'Ingrese su no. de cuenta';
        }
        return null;
      },
    );
  }

  Widget _inputPassword() {
    return TextFormField(
      style: loginInputText,
      decoration: decorationInputSmall('Contraseña'),
      controller: _inputPasswordController,
      obscureText: true,
      validator: (value) {
        if(value.isEmpty) {
          return 'Ingrese su contraseña';
        }
        return null;
      },
    );
  }

  Widget _userDrowpdown() {
    return DropdownButtonFormField<String>(      
      style: loginInputText,
      decoration: decorationInputSmall(''),
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

  Widget _loginButton() {
    return Container(
      height: 40.0,
      width: 110.0,
      child: ElevatedButton.icon(
        onPressed: () {
          if (!_claveLogin.currentState.validate()) {
            return;
          }
          
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }

          Navigator.pushReplacementNamed(context, 'home');
        },
        icon: Icon(Icons.login),
        label: Text('Entrar'),                
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.red,        
        ),
      ),
    );
  }
}

