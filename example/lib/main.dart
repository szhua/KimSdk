import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:kim/kim.dart';
import 'package:kim/pkt/packet.dart';
import 'package:kim/proto/protocol.pbserver.dart';
import 'package:kim/sdk/kim_sdk.dart';
import 'package:kim/sdk/msg_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

const token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2MiOiJzemh1YSIsImFwcCI6ImtpbSIsImV4cCI6MTYzMjM3OTk5NX0"
    ".JI73gI07FGCKnXGSYEfJ5mnDme0yfoD_1mqwRItHxr4";

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      Kim.wsUrl = "ws://192.168.30.158:8000";

      var req = LoginReq();
      req.tags.add("flutter");
      req.token = token;
      Kim.loginReq = req;

      Kim.offlineMessageCallBack = (res) async {
        var users = res.listUsers();
        var groups = res.listGroups();
        print(users);
        if (users.isNotEmpty) {
          var messages = await res.listUserMessages(users[0], 1);
          messages.forEach((element) {
            print(element.toJson());
          });
        }
      };
      var res = await Kim.init();
      if (res.errorResp != null) {
        log(res.errorResp.message);
      }
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: TextButton(
          child: Text("TestChat"),
          onPressed: () async {
            var res = await Kim.talk2User(TalkContent(MessageType.text, "thissss", "ww"), "lei", 2);
            print(res.resp);
          },
        )),
      ),
    );
  }
}
