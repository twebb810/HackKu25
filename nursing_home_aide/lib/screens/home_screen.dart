// A screen for messaging and chat functionality
// to-do: clock in on homepage, associated timer, check if you can import the patients from patients class

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Home Screen'),
                centerTitle: true,
                backgroundColor: Colors.teal,
            ),
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.teal.shade300, Colors.teal.shade100],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                    ),
                ),
            )
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        Text(
                            'Welcome to the Nursing Home Aide App!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color : Colors.white,
                            ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton.icon(
                            onPressed: () {
                                Navigator.pushNamed(context, '/chat');
                            },
                            icon: Icon(Icons.chat, color: Colors.white),
                            label: Text('Chat with Patients'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.teal,shade100,
                                padding: EdgeInsets.symmetric(vertical: 15),
                                textStyle: TextStyle(fontSize: 18),
                            ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton.icon(
                            onPressed: () {
                                Navigator.pushNamed(context, 'patient');
                            },
                            icon: Icon(Icons.people, color: Colors.white),
                            label: Text('View Patients'),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,shade100,
                                padding: EdgeInsets.symmetric(vertical: 15),
                                textStyle: TextStyle(fontSize: 18),
                            ),
                        ),
                        SizedBox(height: 30),
                        Center(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                    'assets/images/nursing_home.png',
                                    height: 200,
                                    fit: BoxFit.cover,
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}