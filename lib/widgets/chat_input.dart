

import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  ChatInput({Key? key}) : super(key: key);

  final chatMessageController = TextEditingController();

  void onSendButtonPressed(){
    print('ChatMessage: ${chatMessageController.text}');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {},
            icon: Icon(Icons.add,
              color: Colors.white,
            ),
          ),

          Expanded(child:TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            minLines: 1,
            textCapitalization: TextCapitalization.sentences,
            controller: chatMessageController,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "Tyoe your message",
                hintStyle: TextStyle(color: Colors.blueGrey),
                border: InputBorder.none),
          )),

          IconButton(onPressed: onSendButtonPressed,
            icon: Icon(Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top:Radius.circular (20))
      ),
    );
  }
}
