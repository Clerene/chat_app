

import 'package:chat_app/utils/brand_color.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/chat_input.dart';
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
      theme: ThemeData(
          canvasColor: Colors.transparent,
          primarySwatch: BrandColor.primaryColor,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black)),
      home: LoginPage(),
      routes: {
        '/chat': (context) => ChatPage()
      },
    );
  }
}
