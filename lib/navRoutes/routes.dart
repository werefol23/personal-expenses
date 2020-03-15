import 'package:flutter/material.dart';
import 'package:personal_expenses/pages/login_page.dart';
import 'package:personal_expenses/pages/main_page.dart';
import 'package:personal_expenses/pages/mis_gastos_page.dart';

class AppRoutes {
  final Map<String, WidgetBuilder> routes = {
      '/main-page': (context) => MainPage(),
  };
}