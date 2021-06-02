//import 'dart:html';
import 'package:flutter/material.dart';
import 'navdrawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Welcome to the Oxbridge Race'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Registration'),
          onPressed: () {
            Navigator.of(context).pushNamed('/user');
          },
        ),
      ),
    );
  }
}
