import 'package:flutter/material.dart';

class SendMessageForumRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade200,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red.shade200,
                      backgroundImage: NetworkImage(''),
                      child: Text(
                        'U'.toUpperCase(),
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'damlakaya1',
                      style: TextStyle(fontSize: 20.0, color: Colors.redAccent.shade200),
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
                        _buildTextField("TITLE", "Type something"),
                        SizedBox(height: 16),
                        _buildTextField("QUESTION", "Type something"),
                        SizedBox(height: 20),
                        _buildSendButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
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
          colors: [Colors.redAccent.shade200, Colors.red.shade300],
        ),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(Icons.send, color: Colors.white),
        onPressed: () {
          // Functionality for sending
        },
      ),
    );
  }
}