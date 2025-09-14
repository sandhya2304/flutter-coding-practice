import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final List<String> messages = [
    "Hello!",
    "How are you?",
    "I'm fine, thanks!",
    "What about you?",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Chat UI"),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(messages[index][0])),
            title: Text(messages[index]),
          );
        },
      ),
    );
  }
}
