import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TokenExipireException implements Exception {
  final String message;
  const TokenExipireException(this.message);

  @override
  String toString() => message;
}

class Requester {
  String uri = "http://localhost:8080/v1/";
  Map<String, String> headers = {
    "Content-Type": "application/json",
  };
  final storage = new FlutterSecureStorage();

  Requester() {}

  Future<void> loginRequester(String name, String password) async {
    var loginUri = uri + "auth/login";

    var request = AuthRequest(name: name, password: password);

    final response = await http.post(Uri.parse(loginUri),
        body: json.encode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> decoded = json.decode(response.body);
      var loginResponse = AuthResponse.fromJson(decoded);
      debugPrint(loginResponse.accessToken);
      await storage.write(key: "accessToken", value: loginResponse.accessToken);
      await storage.write(key: "refreshToken", value: loginResponse.refreshToken);
    } else {
      throw Exception("Login Error");
    }
  }

  Future<void> signUpRequester(String name, String password) async {
    var signUpUri = uri + "auth/signup";

    var request = AuthRequest(name: name, password: password);

    final response = await http.post(Uri.parse(signUpUri),
        body: json.encode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> decoded = json.decode(response.body);
      var signUpResponse = AuthResponse.fromJson(decoded);
      await storage.write(
          key: "accessToken", value: signUpResponse.accessToken);
      await storage.write(
          key: "refreshToken", value: signUpResponse.refreshToken);
      debugPrint(signUpResponse.accessToken);
    } else {
      throw Exception("Sign UP Error");
    }
  }

  Future<String> helloRequester() async {
    var helloUri = uri + "hello";
    var accessToken = await storage.read(key: "accessToken");
    headers["Authorization"] = accessToken ?? "";

    debugPrint("send helloRequester");
    final response = await http.get(Uri.parse(helloUri), headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> decoded = json.decode(response.body);
      var helloResponse = HelloResponse.fromJson(decoded);
      return helloResponse.message;
    } else if (response.statusCode == 401) {
      debugPrint("send refreshTokenRequester");
      await refreshTokenRequester();
      var value = await helloRequester();
      return value;
    } else {
      throw Exception("Hello Error");
    }
  }

  Future<void> refreshTokenRequester() async {
    var refreshTokenUri = uri + "auth/refresh_token";
    var refreshToken = await storage.read(key: "refreshToken");

    var request = RefreshTokenRequest(refreshToken: refreshToken ?? "");

    final response = await http.post(Uri.parse(refreshTokenUri),
        body: json.encode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> decoded = json.decode(response.body);
      var refreshTokenResponse = AuthResponse.fromJson(decoded);
      await storage.write(
          key: "accessToken", value: refreshTokenResponse.accessToken);
      await storage.write(
          key: "refreshToken", value: refreshTokenResponse.refreshToken);
      debugPrint(refreshTokenResponse.accessToken);
    } else {
      throw Exception("Token Refresh Error");
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

class HelloResponse {
  final message;

  HelloResponse.fromJson(Map<String, dynamic> json) : message = json['message'];
}

class RefreshTokenRequest {
  final String refreshToken;

  RefreshTokenRequest({
    this.refreshToken = "",
  });

  Map<String, dynamic> toJson() => {
        'refresh_token': refreshToken,
      };
}