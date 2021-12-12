import 'package:authentication_frontend/requester/requester.dart';
import 'package:authentication_frontend/ui/hello/hello_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Hello extends ConsumerWidget {
  Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("build");
    final messageProvider = ref.watch(helloRequestProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              logoutRequest().then((_) {
                Navigator.pop(context);
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
        child: messageProvider.when(
          data: (message) => Center(
            child: Column(
              children: [Text(message, style: TextStyle(fontSize: 50.0))],
            ),
          ),
          error: (error, stackTrace) {
            Future(() {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text("認証に失敗しました。再ログインをお願いします。"),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("OK")),
                      ],
                    );
                  }).then((_) {
                Navigator.pop(context);
              });
            });
          },
          loading: () => AspectRatio(
            aspectRatio: 0.01,
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
