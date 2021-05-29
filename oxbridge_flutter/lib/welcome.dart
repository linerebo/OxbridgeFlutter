import 'package:flutter/material.dart';
import 'events.dart';
import 'http_service.dart';
import 'user.dart';

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
            Navigator.of(context).pushNamed('/User');
            //Navigator.push(
            //context,
            //MaterialPageRoute(builder: (context) => User()),
            //);
          },
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Text(
                'Side menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                //image: DecorationImage(
                //fit: BoxFit.fill,
                //image: AssetImage('assets/images/cover.jpg')),
              )),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Registration'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => User()),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Events'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Events()),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
