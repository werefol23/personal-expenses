import 'package:flutter/material.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';
import '../pages/mis_gastos_page.dart';

class AppRoutes {
  final Map<String, WidgetBuilder> routes = {
      '/main-page': (context) => MainPage(),
  };
}