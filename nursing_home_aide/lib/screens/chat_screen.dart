// The main dashboard screen / home page of the app
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Chat Screen'),
            ),
            body: Center(
                child: Text('Welcome to the Chat Screen!'),
            ),
        );
    }
}