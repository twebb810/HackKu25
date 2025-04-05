// A screen for messaging and chat functionality
// to-do: associated timer, check if you can import the patients from patients class

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isClockedIn = false; // tracks clock-in status
  DateTime? clockInTime; // stores the clock-in time

  void handleClockIn() {
    setState(() {
      isClockedIn = true;
      clockInTime = DateTime.now();
    });
  }

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
                  color: Colors.white,
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
                  primary: Colors.teal.shade100,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/patient');
                },
                icon: Icon(Icons.people, color: Colors.white),
                label: Text('View Patients'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade100,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: isClockedIn
                    ? null // disable button if clocked in
                    : handleClockIn,
                icon: Icon(Icons.access_time, color: Colors.white),
                label: Text(isClockedIn ? 'Clocked In' : 'Clock In'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isClockedIn
                      ? Colors.grey // Color if button is disabled
                      : Colors.teal.shade700,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
              if (isClockedIn) ...[
                SizedBox(height: 20),
                Text(
                  'Clocked in at: ${clockInTime?.hour}:${clockInTime?.minute.toString().padLeft(2, '0')}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}