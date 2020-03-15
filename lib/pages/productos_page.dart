import 'package:flutter/material.dart';

class ProductosPage extends StatefulWidget {
  ProductosPage({Key key}) : super(key: key);

  @override
  _ProductosPageState createState() => _ProductosPageState();
}

class _ProductosPageState extends State<ProductosPage> {
  @override
  Widget build(BuildContext context) {
    print('ProductosPage');
    return  Container(
      child: Center(
        child: Text('Productos page'),
      ),
    );
  }
}