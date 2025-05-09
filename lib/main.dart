

import 'package:flutter/material.dart';
import 'login_page.dart';
import 'chat_page.dart';
import 'counter_stateful_demo.dart';

void main (){
  runApp(ChatApp());
}
class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: CounterStateful(),
    );
  }
}

