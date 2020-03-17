import 'package:flutter/material.dart';
import 'package:personal_expenses/custom_widgets/user_form.dart';

class AgregarUsuarioPage extends StatelessWidget {
  const AgregarUsuarioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuevo Usuario'),
      ),
      body: Container(
        child: Center(
          child: UserForm()
        ),
      ),
    );
  }
}