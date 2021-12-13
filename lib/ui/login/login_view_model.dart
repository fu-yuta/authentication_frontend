import 'package:authentication_frontend/requester/requester.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

StateProvider<String> errorMessageProvider = StateProvider((ref) => '');

class LoginViewModel {
  var requester = Requester();

  Future<void> loginRequest(String name, String password) async {
    return requester.loginRequester(name, password);
  }

  Future<void> signUpRequest(String name, String password) async {
    return requester.signUpRequester(name, password);
  }
}
