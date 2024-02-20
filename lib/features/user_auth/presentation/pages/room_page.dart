import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class RoomScreen extends StatelessWidget {
  final Random random = Random();
  final List<String> usernames = [
    '@alice', '@bilge', '@charlie', '@deniz', '@begüm', '@hilal', '@grace', '@hannah', '@sude', '@judy',
  ];

  final List<String> messages = [
    'Hey, how are you?',
    'What are you doing today?',
    'I love Flutter!',
    'This chat UI is cool!',
    'Dart is a powerful language.',
    'Random messages are fun!',
    'Let’s meet up later.',
    'Have you seen the latest update?',
    'I’m learning about state management.',
    'Do you know any good Flutter packages?',
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);

    return MaterialApp(
      title: 'Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(

        appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
      elevation: 1,
      centerTitle: true,
      title: Chip(
        backgroundColor: Colors.white,
        label: Text(
          'Flutter',
          style: TextStyle(
            color: Colors.pink.shade200,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.pink.shade50, Colors.pink.shade200],
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Scrollbar(
                  thickness: 6.0,
                  radius: Radius.circular(5.0),
                  child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      bool isOwnMessage = index % 2 == 0;
                      return _ChatMessageTile(
                        isOwnMessage: isOwnMessage,
                        messageContent: messages[random.nextInt(messages.length)],
                        messageTimestamp: "10 minutes ago",
                        username: usernames[random.nextInt(usernames.length)],
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                color: Colors.white,
                child: SafeArea(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Type a message",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(color: Colors.red.shade200),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send, color: Colors.red.shade400),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ChatMessageTile({
    required bool isOwnMessage,
    required String messageContent,
    required String messageTimestamp,
    required String username,
  }) {
    return Align(
      alignment: isOwnMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.red.shade200,
              child: Text(username.substring(1, 2).toUpperCase()),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade200,
                    ),
                  ),
                  Text(
                    messageContent,
                    style: TextStyle(
                      color: Colors.red.shade200,
                    ),
                  ),
                  Text(
                    messageTimestamp,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}