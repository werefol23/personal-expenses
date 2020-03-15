import 'package:flutter/material.dart';
import 'package:personal_expenses/pages/mis_gastos_page.dart';
import 'package:personal_expenses/pages/productos_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Principal'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0)),
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Center(
                        child: CircleAvatar(
                          radius: 35,
                          child: Icon(Icons.person),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 40,),
                          Text('Adriana Saurith', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Text('Disponible: \$200.000', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                )
              ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Mis Gastos'),
              subtitle: Text('Ver conglomerado de gastos mensuales'),
            ),
            Divider(
              height: 0,
            ),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text('Mis Productos'),
              subtitle: Text('Ver productos registrados'),
            ),
            Divider(
              height: 0,
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Menu Principal'),
      ),
    );
    /* return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text:'Mis Gastos'),
              Tab(text:'Productos')
            ]
          ),
          title: Text('Menu Principal'),
        ),
        body: TabBarView(
          children: [
            MisGastosPage(),
            ProductosPage()
          ]
        ),
      ),
    ); */
  }
}
