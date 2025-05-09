import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi $username!'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/');
                print('Icon pressed!');
              },
              icon: Icon(Icons.logout))
        ], // IconButton
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return ChatBubble(
                        alignment: index % 2 == 0
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        message: "Hello, this is Pooja!");
                  })
            //  child: ListView(
            //     children: [
            //      ChatBubble(alignment: Alignment.centerLeft, message: "Hello, this is Poopja!"),
            //      ChatBubble(alignment: Alignment.centerRight, message: "Hello, this is Poopja!"),
            //    ],
            //  ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
