import 'package:flutter/material.dart';

import '../custom_widgets/login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                CircleAvatar(
                  child: Image.asset('assets/expenses_image.png'),
                  radius: 140.0,
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    'Personal Expenses',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                  ),
                ),
                SizedBox(height: 30),
                LoginWidget()
              ],
            ),
          ) 
        )
      ),
    );
  }
}
