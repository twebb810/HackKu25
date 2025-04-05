// A screen for messaging and chat functionality

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Home Screen'),
            ),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                            'Welcome to the Nursing Home Aide App!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                            ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () {
                                Navigator.pushNamed(context, '/chat');
                            },
                            child: Text('Go to Chat Screen'),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {
                                Navigator.pushNamed(context, 'patient');
                            },
                            child: Text('View Patients'),
                        ),
                        SizedBox(height: 20),
                        Image.asset(
                            'assets/images/home_image.png', // Replace with your image path
                            height: 200,
                            fit: BoxFit.cover,
                        ),
                    ],
                ),
            ),
        );
    }
}