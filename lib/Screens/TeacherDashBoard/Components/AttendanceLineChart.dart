import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AttendanceLineChart extends StatelessWidget {
  const AttendanceLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),

          titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, _) {
                  switch (value.toInt()) {
                    case 0:
                      return const Text("MON");
                    case 1:
                      return const Text("TUE");
                    case 2:
                      return const Text("WED");
                    case 3:
                      return const Text("THU");
                    case 4:
                      return const Text("FRI");
                  }
                  return const Text("");
                },
              ),
            ),
          ),

          minX: 0,
          maxX: 4,
          minY: 0,
          maxY: 10,

          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              color: Colors.blue,
              barWidth: 3,

              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, _, __, ___) {
                  return FlDotCirclePainter(
                    radius: 4,
                    color: Colors.white,
                    strokeWidth: 2,
                    strokeColor: Colors.blue,
                  );
                },
              ),

              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.withOpacity(0.3),
                    Colors.blue.withOpacity(0.0),
                  ],
                ),
              ),

              spots: const [
                FlSpot(0, 2),
                FlSpot(1, 4),
                FlSpot(2, 6),
                FlSpot(3, 5),
                FlSpot(4, 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}