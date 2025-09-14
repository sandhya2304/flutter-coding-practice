


import 'dart:js';

import 'package:flutter/material.dart';
import 'package:practice/MessageInputScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        title: 'Flutter Hello World',
        debugShowCheckedModeBanner: false,
        home: MessageInputScreen());
  }
}

---
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageInputScreen extends StatefulWidget {
  @override
  State<MessageInputScreen> createState() => _MessageInputScreenState();
}

class _MessageInputScreenState extends State<MessageInputScreen> {
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [];

  void sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Message Input ")),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(messages[index]),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: "Type a messgae"),
                )),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                )
              ],
            )
          ],
        ));
  }
}





