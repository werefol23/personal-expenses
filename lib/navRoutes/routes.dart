import 'package:flutter/material.dart';
import 'package:personal_expenses/pages/agregar_usuario.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';
import '../pages/mis_gastos_page.dart';

class AppRoutes {
  final Map<String, WidgetBuilder> routes = {
      '/main-page': (context) => MainPage(),
      '/agregar-usuario': (context) => AgregarUsuarioPage()
  };
}