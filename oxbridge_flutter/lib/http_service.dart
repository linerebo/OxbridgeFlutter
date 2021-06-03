import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart';
import 'user_model.dart';
import 'event_model.dart';

class HttpService {
  //final String userURL = "http://10.0.2.2:3000/users/register"; //emulator
  final String userURL = "http://localhost:3000";
  //final String userURL = "http://192.168.178.46:3000/users/register";

  final String eventsURL = "http://10.0.2.2:3000/events";

  Future<User> createUser(String firstname, String lastname,
      String emailUsername, String password) async {
    final Response response = await post(Uri.parse(userURL),
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        },
        body: jsonEncode(<String, String>{
          "firstname": firstname,
          "lastname": lastname,
          "emailUsername": emailUsername,
          "password": password
        }));
    if (response.statusCode == 200) {
      // print(response.body);
      return User.fromJson(json.decode(response.body));
    } else {
      // print('error');
      throw Exception(response.body);
    }
  }

  Future<List<Event>> getEvents() async {
    final Response response = await get(Uri.parse(eventsURL));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      List<Event> events = body
        .map(
          (dynamic item) => Event.fromJson(item),
        )
        .toList();

      return events;
    } else {
      throw "Unable to retrieve events";
    }
  }
}

