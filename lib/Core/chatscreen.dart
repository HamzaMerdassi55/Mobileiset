import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String contactName;

  const ChatScreen({Key? key, required this.contactName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contactName),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // Replace with your chat messages
              children: [
                ChatBubble(
                  message: 'Hey there!',
                  isSentByMe: false,
                ),
                ChatBubble(
                  message: 'Hello! How are you?',
                  isSentByMe: true,
                ),
                // Add more chat bubbles as needed
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Implement send message functionality
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;

  const ChatBubble({Key? key, required this.message, required this.isSentByMe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isSentByMe ?  Color.fromARGB(237, 12, 191, 161) : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: isSentByMe ? Radius.circular(20) : Radius.circular(0),
            bottomRight: isSentByMe ? Radius.circular(0) : Radius.circular(20),
          ),
        ),
        child: Text(
          message,
          style: TextStyle(color: isSentByMe ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
