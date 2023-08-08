import 'dart:convert';

import 'package:http/http.dart';

import 'uers_model.dart';
Future<void> main()async {
  String urlBase = "https://64c9fb25b2980cec85c2ab6e.mockapi.io";

  Uri uri = Uri.parse("$urlBase/users");

  Response respons = await get(uri);

  print(respons.body);

  List<UsersModel> users = List<Map<String,Object?>>.from(jsonDecode(respons.body)).map(UsersModel.fromJson).toList();
  print(users);
}
