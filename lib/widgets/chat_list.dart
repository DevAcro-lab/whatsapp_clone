import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/sender_messages.dart';

import 'my_messages.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MineMessages(
                message: messages[index]['text'].toString(),
                time: messages[index]['time'].toString());
          } else {
            return SenderMessages(
                message: messages[index]['text'].toString(),
                time: messages[index]['time'].toString());
          }
        });
  }
}
