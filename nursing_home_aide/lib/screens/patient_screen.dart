// A screen to display patient details

import 'package:flutter/material.dart';

class PatientScreen extends StatelessWidget {
  final List<Map<String, String>> patients = [
    {'name': 'Patient A', 'details': 'Age: 70, Condition: Stable'},
    {'name': 'Patient B', 'details': 'Age: 65, Condition: Critical'},
    {'name': 'Patient C', 'details': 'Age: 80, Condition: Recovering'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patients'),
      ),
      body: ListView.builder(
        itemCount: patients.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(patients[index]['name']!),
              subtitle: Text(patients[index]['details']!),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Handle patient selection
              },
            ),
          );
        },
      ),
    );
  }
}