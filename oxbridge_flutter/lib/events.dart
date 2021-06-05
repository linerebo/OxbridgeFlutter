import 'package:flutter/material.dart';
import 'http_service.dart';
import 'navdrawer.dart';
import 'event_model.dart';

class GetEvents extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Events"),
      ),
      body: FutureBuilder(
        future: httpService.getEvents(),
        builder: (BuildContext context, AsyncSnapshot<List<Event>> snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            List<Event>? events = snapshot.data;
            List<Widget>? mychildren = events
                ?.map((Event event) => ListTile(
                    title: Text(event.name),
                    tileColor: Colors.lightBlue.shade50,
                    subtitle: Text("Start:  " + event.eventStart + "\n" + "End:    " + event.eventEnd)))
                .toList();
            return ListView(children: mychildren ?? []);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
