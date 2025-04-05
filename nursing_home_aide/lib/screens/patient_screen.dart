// A screen to display patient details

import 'package:flutter/material.dart';

class PatientScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Patient Details'),
            ),
            body: Center(
                child: Text('Patient details will be displayed here.'),
            ),
        );
    }
}