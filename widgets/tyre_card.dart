// widgets/tyre_card.dart

import 'package:flutter/material.dart';
import 'package:tpms_sih2024/models/tyre.dart';
import 'package:tpms_sih2024/charts/tyre_pressure_chart.dart';

class TyreCard extends StatelessWidget {
  final Tyre tyre;

  TyreCard({required this.tyre});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              tyre.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Pressure: ${tyre.pressure} PSI',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Temperature: ${tyre.temperature}°C',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TyrePressureChart(tyre: tyre),
          ],
        ),
      ),
    );
  }
}
