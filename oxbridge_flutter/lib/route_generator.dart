import 'package:flutter/material.dart';
import 'user.dart';
import 'events.dart';
import 'welcome.dart';

//all routes in the application are placed in the Route Generator
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // possible to pass on arguments to new route for example by login
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/user':
        return MaterialPageRoute(builder: (_) => AddUser());
      case '/events':
        return MaterialPageRoute(builder: (_) => GetEvents());
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
