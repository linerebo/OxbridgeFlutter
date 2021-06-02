import 'package:flutter/material.dart';
import 'route_generator.dart';

//main
void main() {
  runApp(MaterialApp(
    title: 'Oxbridge',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    initialRoute: '/',
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
