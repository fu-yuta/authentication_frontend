import 'package:authentication_frontend/login.dart';
import 'package:authentication_frontend/main.dart';
import 'package:authentication_frontend/requester/requester.dart';
import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPrint("build");
    return MaterialApp(
      title: 'ログイン画面',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Hello(),
      navigatorObservers: [routeObserver],
    );
  }
}

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> with RouteAware {
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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPopNext() {
    debugPrint("didPopNext");
    super.didPopNext();
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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              Requester().logoutRequester().then((_) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              });
            },
            child: const Text('LOGOUT',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [Text(_message, style: TextStyle(fontSize: 50.0))],
          ),
        ),
      ),
    );
  }
}
