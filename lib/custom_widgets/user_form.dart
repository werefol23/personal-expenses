import 'package:flutter/material.dart';
import 'package:personal_expenses/models/user.dart';

class UserForm extends StatefulWidget {
  UserForm({Key key, Function updateImgGender}) : super(key: key);

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  
  final _userFormKey = GlobalKey<FormState>();
  final User _userData = User();
  List<String> _genders = ['Femenino','Masculino'];
  String dDownValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _userFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Escriba sus nombres',
              labelText: 'Nombres'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Debe escribir su(s) nombre(s)';
              }

              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Escriba sus apellidos',
              labelText: 'Apellidos'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Debe escribir su(s) apellido(s)';
              }

              return null;
            },
          ),
          DropdownButtonFormField(
            value: dDownValue,
            decoration: InputDecoration(
              hintText: 'Escoja género'
            ),
            items: _genders.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
            .toList(),
            onChanged: (val){
              setState(() {
                this.dDownValue = val;
              });
              print(val);
            },
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Escriba su nombre de usuario',
              labelText: 'Username'
            ),
            maxLength: 12,
            validator: (value) {
              if (value.isEmpty) {
                return 'Debe escribir su nombre de usuario';
              }

              return null;
            },
          )
        ]
      )
    );
  }
}