// The main dashboard screen / home page of the app
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
    final List<String> messages = [
        'Hello! How can I assist you today?',
        'Please let me know if you need any help!'
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Chat Screen'),
            ),
            body: Column(
                children: [
                    Expanded(
                        child: ListView.builder(
                            itemCount: messages.length,
                            itemBuilder: (context, index) {
                                return ListTile(
                                    title: Text(messages[index]),
                                    leading: Icon(Icons.message),
                                );
                            },
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            children: [
                                Expanded(
                                    child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Type a message...',
                                            border: OutlineInputBorder(),
                                        ),
                                    ),
                                ),
                                SizedBox(width: 8),
                                ElevatedButton(
                                    onPressed: () {
                                        // Handle sending a message
                                    },
                                    child: Icon(Icons.send),
                                ),
                            ],
                        ),
                    ),
                ],
            ),
        );
    }
}