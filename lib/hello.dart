import 'package:authentication_frontend/requester/requester.dart';
import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  var _message = "";

  @override
  void initState() {
    super.initState();
    Requester().helloRequester().then((value) {
      setState(() {
        _message = value;
      });
    }).onError((error, stackTrace) {
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text("認証に失敗しました。再ログインをお願いします。"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context), child: Text("OK")),
              ],
            );
          }).then((_) {
        Navigator.pop(context);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Center(
        child: Text(_message),
      ),
    );
  }
}
