import 'package:flutter/material.dart';

void main (){
  runApp(ChatApp());
}
class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
  return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button clicked');
          },
          ), // FloatingActionButton
          body: Text('Hello!'),
      ), // Scaffold
  ); // MaterialApp
}
}