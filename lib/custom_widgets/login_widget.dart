import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  final String _user = 'android';
  final String _pass = 'develop';

  final TextEditingController _userInputController = TextEditingController();
  final TextEditingController _passInputController = TextEditingController();

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
                  controller: _userInputController,
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
                  controller: _passInputController,
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
                  print(_userInputController.text);
                  print(_passInputController.text);
                  final validation = this._validateCredentials();
                  if (validation) {
                    Navigator.of(context).pushReplacementNamed('/agregar-usuario');
                  } else {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        title: Text('Login incorrecto'),
                        content: Text('Verifique sus credenciales luego intete ingresar de nuevo!'),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: (){
                              Navigator.pop(context);
                            }, 
                            child: Text('OK'))
                        ],
                      )
                    );
                  }
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

  bool _validateCredentials() {
    if ( this._userInputController.text != null && this._passInputController.text != null ) {
      if ( this._userInputController.text == this._user && this._passInputController.text == this._pass ) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
