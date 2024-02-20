import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values); // Configures the system UI.
    return MaterialApp(
      title: 'Chat UI', // Title of the application.
      debugShowCheckedModeBanner: false, // Removes the debug banner from the UI.
      theme: ThemeData(
        primarySwatch: Colors.red, // Defines the primary color of the theme.
      ),
      home: ChatScreen(), // Sets the home screen of the application.
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true, // Handles the back button press within the app.
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade300, // Sets the AppBar background color.
          elevation: 1, // Sets the elevation of the AppBar.
          centerTitle: true, // Centers the title within the AppBar.
          title: Chip(
            backgroundColor: Colors.white, // Sets the background color of the title chip.
            label: Text(
              'KOTLIN', // Title text.
              style: TextStyle(
                color: Colors.red.shade200, // Sets the color of the title text.
                fontWeight: FontWeight.bold, // Sets the font weight of the title text.
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black), // Sets the icon and color for the back button.
            onPressed: () => Navigator.of(context).pop(), // Defines the action to take when the back button is pressed.
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.pink.shade100, Colors.pink.shade50], // Sets the gradient background for the chat screen.
            ),
          ),
          child: ChatBody(), // Inserts the chat body into the screen.
        ),
      ),
    );
  }
}

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Scrollbar(
            thickness: 6.0, // Defines the thickness of the scrollbar.
            radius: Radius.circular(5.0), // Defines the radius of the scrollbar's corners.
            child: ListView.builder(
              itemCount: 50, // Sets the number of items (messages) in the list.
              itemBuilder: (context, index) {
                bool isOwnMessage = index % 2 == 0; // Determines whether the message is the user's own.
                return ChatMessageTile(
                  isOwnMessage: isOwnMessage,
                  messageContent: "Message content ${index + 1}", // Sets the content of the message.
                  messageTimestamp: "10 minutes ago", // Sets the timestamp of the message.
                  username: "@user${index + 1}", // Sets the username for the message.
                );
              },
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0), // Sets padding for the message input container.
          color: Colors.white, // Sets the background color for the message input container.
          child: SafeArea(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message", // Placeholder text for the message input field.
                      border: InputBorder.none, // Removes the border from the message input field.
                    ),
                    style: TextStyle(color: Colors.red.shade200), // Sets the text color for the message input field.
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.red.shade400), // Sets the icon and color for the send button.
                  onPressed: () {}, // Placeholder function for the send button.
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChatMessageTile extends StatelessWidget {
  final bool isOwnMessage;
  final String messageContent;
  final String messageTimestamp;
  final String username;

  const ChatMessageTile({
    Key? key,
    required this.isOwnMessage,
    required this.messageContent,
    required this.messageTimestamp,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isOwnMessage ? Alignment.centerRight : Alignment.centerLeft, // Aligns the message based on the sender.
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Sets margin for the message tile.
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0), // Sets padding for the message tile.
        decoration: BoxDecoration(
          color: Colors.white, // Sets the background color for the message tile.
          borderRadius: BorderRadius.circular(20), // Rounds the corners of the message tile.
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.redAccent.shade100, // Sets the background color for the user avatar.
              child: Text(username.substring(0, 1).toUpperCase()), // Displays the first letter of the username.
            ),
            SizedBox(width: 8), // Adds spacing between the avatar and message content.
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username, // Displays the username.
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Makes the username bold.
                      color: Colors.red.shade400, // Sets the color for the username.
                    ),
                  ),
                  Text(
                    messageContent, // Displays the message content.
                    style: TextStyle(
                      color: Colors.red.shade400, // Sets the color for the message content.
                    ),
                  ),
                  Text(
                    messageTimestamp, // Displays the timestamp of the message.
                    style: TextStyle(
                      fontSize: 12, // Sets the font size for the timestamp.
                      color: Colors.black54, // Sets the color for the timestamp.
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
