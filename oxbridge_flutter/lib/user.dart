//import 'dart:html';
import 'package:flutter/material.dart';
import 'http_service.dart';
import 'navdrawer.dart';

class AddUser extends StatefulWidget {
  @override
  UserState createState() => UserState();
}

class UserState extends State<AddUser> {
  late String firstname;
  late String lastname;
  late String emailUsername;
  late String password;

  final _formKey = GlobalKey<FormState>();
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            //firstname
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter first name', labelText: 'First Name'),
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {
                  firstname = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter first name';
                }
                return null;
              },
            ),

            //lastname
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter last name', labelText: 'Last Name'),
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {
                  lastname = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter last name';
                }
                return null;
              },
            ),

            //email
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter email address', labelText: 'Email address'),
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {
                  emailUsername = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email address';
                }
                return null;
              },
            ),

            //password
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter password', labelText: 'Password'),
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
            ),

            ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    httpService.createUser(
                        firstname, lastname, emailUsername, password);
                    ScaffoldMessenger.of(context).showSnackBar(
                        (SnackBar(content: Text('New User has been created'))));
                  }
                }),
          ],
        ),
      ),
    );
  }
}
