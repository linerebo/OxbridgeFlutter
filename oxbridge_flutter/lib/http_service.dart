import 'dart:convert';
import 'package:http/http.dart';


class HttpService {
  static String _baseUrl = 'http://10.0.2.2:3000'; //for emulator
  //static String _baseUrl = 'http://localhost:3000';
  //static String _baseUrl = 'http://192.168.178.46:3000';
  static Future<Response> createUser(String firstname, String lastname, String emailUsername, String password) async {
   final Response response = await post(Uri.parse('$_baseUrl/users/register'),
    headers: <String, String>{
      'Content-Type':'application/json;charset=UTF-8'
    },
    body: jsonEncode(<String, String>{
      "firstname":firstname, "lastname": lastname, "emailUsername": emailUsername, "password": password}));
  if(response.statusCode == 200){
    print(response.body);
  }else{
    print('error');
  }
  return response;
  }
}
