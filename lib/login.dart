import 'package:authentication_frontend/hello.dart';
import 'package:authentication_frontend/requester/requester.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameTextController = TextEditingController();
  final _passwordNameTextController = TextEditingController();
  final FocusNode _userNamefocusNode = FocusNode();
  final FocusNode _passwordNameFocusNode = FocusNode();
  var _errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("ログイン"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_errorMessage, style: const TextStyle(color: Colors.red)),
            TextField(
              controller: _userNameTextController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
              focusNode: _userNamefocusNode,
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordNameTextController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              focusNode: _passwordNameFocusNode,
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _userNameTextController.clear();
                    _passwordNameTextController.clear();
                  },
                ),
                ElevatedButton(
                    child: const Text('LOGIN'),
                    onPressed: () {
                      Requester()
                          .loginRequester(_userNameTextController.text,
                              _passwordNameTextController.text)
                          .then((_) {
                        setState(() {
                          _errorMessage = "";
                        });
                        Navigator.pop(context);
                      }).onError((error, stackTrace) {
                        debugPrint(error.toString());
                        _userNameTextController.clear();
                        _passwordNameTextController.clear();
                        setState(() {
                          _errorMessage = "ログインに失敗しました。ユーザー名かパスワードが間違っています。";
                        });
                      });
                    }),
                ElevatedButton(
                    child: const Text('SIGNUP'),
                    onPressed: () {
                      Requester()
                          .signUpRequester(_userNameTextController.text,
                              _passwordNameTextController.text)
                          .then((_) {
                        setState(() {
                          _errorMessage = "";
                        });
                        Navigator.pop(context);
                      }).onError((error, stackTrace) {
                        debugPrint(error.toString());
                        _userNameTextController.clear();
                        _passwordNameTextController.clear();
                        setState(() {
                          _errorMessage = "ユーザーの作成に失敗しました。既に登録済みのユーザーです。";
                        });
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
