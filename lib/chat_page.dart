

import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String username;
  const ChatPage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Hi $username!'),

        actions: [
          IconButton(
              onPressed: () {
                print('Icon pressed!');

                Navigator.pop(context);
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
