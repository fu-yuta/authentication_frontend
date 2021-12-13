import 'package:authentication_frontend/requester/requester.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

StateProvider<String> errorMessageProvider = StateProvider((ref) => '');

Future<void> loginRequest(String name, String password) async {
  return Requester().loginRequester(name, password);
}

Future<void> signUpRequest(String name, String password) async {
  return Requester().signUpRequester(name, password);
}
