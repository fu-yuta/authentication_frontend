import 'package:authentication_frontend/requester/requester.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

AutoDisposeFutureProvider<String> helloRequestProvider =
    FutureProvider.autoDispose((ref) async {
  var message = await Requester().helloRequester();

  return message;
});

Future<void> logoutRequest() async {
  return Requester().logoutRequester();
}
