import 'package:flutter/material.dart';

void main (){
  runApp(ChatApp());
}
class ChatApp extends StatelessWidget { const ChatApp({super.key});
@override
Widget build (BuildContext context) {
  return MaterialApp(
    title: "Chat App!!!!",
    theme: ThemeData(primarySwatch: home: LoginPage(),
  ); // MaterialApp
  Colors.yellow),
}
class LoginPage extends StatelessWidget { const LoginPage({ super.key});
@override
Widget build (BuildContext context) {
return Scaffold(
appBar: AppBar(),
drawer: Drawer(),
I
floatingActionButton: FloatingActionButton (onPressed: () {
print('Button clicked');
}), // FloatingActionButton
body: Text("Hello!"),
); // Scaffold
}
