import 'package:flutter/material.dart';
import './errorpage.dart';
import './homepage.dart';
import './secondpage.dart';
import './thirdpage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/second':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondPage(data: args));
        }
        return ErrorRoute();
      case '/third':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => ThirdPage(data: args));
        }
        return ErrorRoute();
      default:
        return ErrorRoute();
    }
  }
}

Route<dynamic> ErrorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(title: Text('Error')),
    );
  });
}
