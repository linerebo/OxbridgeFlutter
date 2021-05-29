import 'package:flutter/material.dart';
import 'package:oxbridge_flutter/main.dart';
import 'package:oxbridge_flutter/user.dart';
import 'package:oxbridge_flutter/events.dart';
import 'package:oxbridge_flutter/welcome.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // possible to pass on arguments to new route for example by login
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/user':
        return MaterialPageRoute(builder: (_) => User());
      case '/events':
        return MaterialPageRoute(builder: (_) => Events());
    }
    return _errorRoute();
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(child: Text('ERROR')),
      );
    });
  }
}
