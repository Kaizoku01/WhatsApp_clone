import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Features/Chat_Modal.dart';
import 'package:whatsapp_clone/Features/Chat_helper.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ChatHelper.itemCount,
        itemBuilder: (context, index) {
          ChatModal chatItem = ChatHelper.getChatItem(index);
          return Column(
            children: [
              Row(
                children: [
                  Icon(Icons.account_circle),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('Name'),
                          Text('Date'),
                        ],
                      ),
                      Text('Recent message')
                    ],
                  ),
                ],
              ),
            ],
          );
        });
  }
}
