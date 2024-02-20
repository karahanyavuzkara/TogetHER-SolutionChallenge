import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  final String username = 'username';
  final String userProfileUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade300, // Background color of the app bar
        elevation: 0, // No shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Back button icon
          onPressed: () => Navigator.of(context).pop(), // Navigate back when pressed
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white), // More options icon
            onPressed: () {}, // Placeholder for additional functionality
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.pink.shade100, Colors.pink.shade50], // Gradient colors
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.redAccent.shade200, // Avatar background color
                    backgroundImage: userProfileUrl.isNotEmpty ? NetworkImage(userProfileUrl) : null,
                    child: userProfileUrl.isEmpty ? Text(
                      username.isNotEmpty ? username[0].toUpperCase() : '?', // Display first letter of username if available
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ) : null,
                  ),
                  SizedBox(width: 10),
                  Text(
                    username,
                    style: TextStyle(fontSize: 20.0, color: Colors.redAccent.shade200), // Username text style
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      _buildTextField("TITLE", "Type something"), // Text field for title
                      SizedBox(height: 16),
                      _buildTextField("QUESTION", "Type something"), // Text field for question
                      SizedBox(height: 20),
                      _buildSendButton(), // Send button
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      minLines: 1,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildSendButton() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.redAccent.shade200, Colors.red.shade300], // Gradient colors
        ),
        shape: BoxShape.circle, // Circular shape
      ),
      child: IconButton(
        icon: Icon(Icons.send, color: Colors.white), // Send icon
        onPressed: () {
          // Functionality for sending
        },
      ),
    );
  }
}