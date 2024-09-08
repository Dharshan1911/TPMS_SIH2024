// screens/home_screen.dart

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Dashboard or key metrics section
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Tyre Pressure Monitoring System'),
              ),
            ),
            // List or grid of tyres
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  TyreCard(
                    tyreName: 'Front Left',
                    pressure: '35 psi',
                  ),
                  TyreCard(
                    tyreName: 'Front Right',
                    pressure: '35 psi',
                  ),
                  // Add more tyre cards as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TyreCard extends StatelessWidget {
  final String tyreName;
  final String pressure;

  TyreCard({required this.tyreName, required this.pressure});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(tyreName),
            Text(pressure),
          ],
        ),
      ),
    );
  }
}
