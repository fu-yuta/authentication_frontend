import 'package:authentication_frontend/requester/requester.dart';
import 'package:authentication_frontend/ui/hello/hello_view_model.dart';
import 'package:authentication_frontend/ui/login/login_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'unit_test.mocks.dart';

@GenerateMocks([Requester])
void main() {
  final mock = MockRequester();

  group("login view model test", () {
    test("ログイン成功", () async {
      var loginViewModel = LoginViewModel();

      loginViewModel.requester = mock;

      await loginViewModel.loginRequest("test", "test");
      verify(mock.loginRequester("test", "test")).called(1);
    });

    test("ログイン失敗", () async {
      final testExeption = Exception("test");

      when(mock.loginRequester("test", "aaa")).thenThrow(testExeption);
      var loginViewModel = LoginViewModel();

      loginViewModel.requester = mock;

      try {
        await loginViewModel.loginRequest("test", "aaa");
      } catch (e) {
        expect(e, testExeption);
      }
    });

    test("サインアップ成功", () async {
      var loginViewModel = LoginViewModel();

      loginViewModel.requester = mock;

      await loginViewModel.signUpRequest("test", "test");
      verify(mock.signUpRequester("test", "test")).called(1);
    });

    test("サインアップ失敗", () async {
      final testExeption = Exception("test");

      when(mock.signUpRequester("test", "aaa")).thenThrow(testExeption);
      var loginViewModel = LoginViewModel();

      loginViewModel.requester = mock;

      try {
        await loginViewModel.signUpRequest("test", "aaa");
      } catch (e) {
        expect(e, testExeption);
      }
    });
  });

  group("hello view model test", () {
    test("ログアウト成功", () async {
      var helloViewModel = HelloViewModel();

      helloViewModel.requester = mock;

      await helloViewModel.logoutRequest();
      verify(mock.logoutRequester()).called(1);
    });
  });
}
