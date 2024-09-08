// charts/tyre_pressure_chart.dart

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:tpms_sih2024/models/tyre.dart';

class TyrePressureChart extends StatefulWidget {
  final Tyre tyre;

  TyrePressureChart({required this.tyre});

  @override
  _TyrePressureChartState createState() => _TyrePressureChartState();
}

class _TyrePressureChartState extends State<TyrePressureChart> {
  List<FlSpot> _spots = [];

  void _updateSpots() {
    _spots = [
      FlSpot(0, widget.tyre.pressure),
      FlSpot(1, widget.tyre.pressure + 1),
      FlSpot(2, widget.tyre.pressure + 2),
      FlSpot(3, widget.tyre.pressure + 3),
      FlSpot(4, widget.tyre.pressure + 4),
    ];
  }

  @override
  void initState() {
    super.initState();
    _updateSpots();
  }

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: [Colors.blue],
            isCurved: false,
          ),
        ],
        titlesData: FlTitlesData(
          show: true,
          leftTitles: SideTitles(
            showTitles: true,
            getTextStyles: (value) => const TextStyle(fontSize: 14),
            showTitles: (value) => value.toString(),
          ),
          bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles: (value) => const TextStyle(fontSize: 14),
            showTitles: (value) => value.toString(),
          ),
        ),
        gridData: FlGridData(
          show: true,
          horizontalInterval: 1,
          verticalInterval: 1,
        ),
      ),
    );
  }
}
