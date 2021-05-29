import 'package:flutter/material.dart';
import 'events.dart';
import 'http_service.dart';


class User extends StatefulWidget {
  @override
  UserState createState() =>
      UserState(firstname: '', lastname: '', emailUsername: '', password: '');
}

class UserState extends State<User> {
  String firstname;
  String lastname;
  String emailUsername;
  String password;

  UserState({
    required this.firstname,
    required this.lastname,
    required this.emailUsername,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: <Widget>[
            // first name input
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter first name', labelText: 'First Name'),
              onChanged: (value) {
                setState(() {
                  firstname = value;
                });
              },
            ),

            // last name input
            TextField(
              decoration: 
                    InputDecoration(
                  hintText: 'Enter last name', labelText: 'Last Name'),
              onChanged: (value) {
                setState(() {
                  lastname = value;
                });
              },
            ),

            // email input
            TextField(
              decoration:
                  InputDecoration(hintText: 'Enter email', labelText: 'Email'),
              onChanged: (value) {
                setState(() {
                  emailUsername = value;
                });
              },
            ),

            // password input
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter password', labelText: 'Password'),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),

            //Register button
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                HttpService.createUser(
                    firstname, lastname, emailUsername, password);
              },
            )
          ]),
        ),
      ),
    );
  }
}
