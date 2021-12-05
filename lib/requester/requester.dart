import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Requester {
  String accessToken = "";
  String refreshToken = "";
  String uri = "http://localhost:8080/v1/";
  Map<String, String> headers = {
    "Content-Type": "application/json",
  };

  Requester() {
    accessToken = "";
    refreshToken = "";
    headers["Authorization"] = accessToken;
  }

  Future<String> loginRequester(String name, String password) async {
    var loginUri = uri + "auth/login";

    var request = LoginRequest(name: name, password: password);

    final response = await http.post(Uri.parse(loginUri),
        body: json.encode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> decoded = json.decode(response.body);
      var loginResponse = LoginResponse.fromJson(decoded);
      // debugPrint(loginResponse.accessToken);
      return loginResponse.accessToken;
    } else {
      throw Exception("Login Error");
    }
  }
}

class LoginResponse {
  final String accessToken;
  final String refreshToken;

  LoginResponse.fromJson(Map<String, dynamic> json)
      : accessToken = json['access_token'],
        refreshToken = json['refresh_token'];
}

class LoginRequest {
  final String name;
  final String password;

  LoginRequest({
    this.name = "",
    this.password = "",
  });

  Map<String, dynamic> toJson() => {
        'password': password,
        'user_name': name,
      };
}
