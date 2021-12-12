import 'package:authentication_frontend/requester/requester.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

StateProvider<String> errorMessageProvider = StateProvider((ref) => '');

Future<void> loginRequest(WidgetRef ref, String name, String password) async {
  return Requester()
      .loginRequester(name, password)
      .onError((error, stackTrace) {
    ref.watch(errorMessageProvider.notifier).state = "ログインに失敗しました";
    throw Exception(error.toString());
  });
}

Future<void> signUpRequest(WidgetRef ref, String name, String password) async {
  return Requester()
      .signUpRequester(name, password)
      .onError((error, stackTrace) {
    ref.watch(errorMessageProvider.notifier).state = "サインアップに失敗しました";
    throw Exception(error.toString());
  });
}
