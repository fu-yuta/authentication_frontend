import 'dart:ffi';

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

  Future<void> loginRequester(String name, String password) async {
    var loginUri = uri + "auth/login";

    var request = AuthRequest(name: name, password: password);

    final response = await http.post(Uri.parse(loginUri),
        body: json.encode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> decoded = json.decode(response.body);
      var loginResponse = AuthResponse.fromJson(decoded);
      debugPrint(loginResponse.accessToken);
    } else {
      throw Exception("Login Error");
    }
  }

  Future<void> SignUpRequester(String name, String password) async {
    var signUpUri = uri + "auth/signup";

    var request = AuthRequest(name: name, password: password);

    final response = await http.post(Uri.parse(signUpUri),
        body: json.encode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> decoded = json.decode(response.body);
      var signUpResponse = AuthResponse.fromJson(decoded);
      debugPrint(signUpResponse.accessToken);
    } else {
      throw Exception("Login Error");
    }
  }
}

class AuthResponse {
  final String accessToken;
  final String refreshToken;

  AuthResponse.fromJson(Map<String, dynamic> json)
      : accessToken = json['access_token'],
        refreshToken = json['refresh_token'];
}

class AuthRequest {
  final String name;
  final String password;

  AuthRequest({
    this.name = "",
    this.password = "",
  });

  Map<String, dynamic> toJson() => {
        'password': password,
        'user_name': name,
      };
}
