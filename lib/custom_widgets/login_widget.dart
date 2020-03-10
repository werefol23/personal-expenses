import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Usuario',
                      hintText: 'Introduzca su usuario',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      labelText: 'Contraseña',
                      hintText: 'Introduzca su contraseña',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                child: Text(
                  '¿Olvido su contraseña?',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                onPressed: () {
                  print('Button Pressed');
                },
                child: Text(
                  'Ingresar',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                    color: Theme.of(context).primaryColor, 
                    width: 1.0
                  )
                ),
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
