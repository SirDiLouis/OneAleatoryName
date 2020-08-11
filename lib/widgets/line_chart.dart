import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineReportChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: getSports(),
              isCurved: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
              colors: [Colors.red],
              barWidth: 4,
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> getSports() {
    return [
      FlSpot(0, .5),
      FlSpot(1, .58),
      FlSpot(2, .6),
      FlSpot(3, .64),
      FlSpot(4, .7),
      FlSpot(5, .75),
      FlSpot(6, .95),
      FlSpot(7, 1.3),
      FlSpot(8, 1.85),
      FlSpot(9, 2.35),
      FlSpot(10, 3.6),
      FlSpot(11, 7.3),
    ];
  }
}