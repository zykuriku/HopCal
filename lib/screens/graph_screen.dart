import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:flutter/material.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: SfCartesianChart(
          title: ChartTitle(text: 'Efficiency vs Power'),
          legend: Legend(isVisible: true),
          primaryXAxis: CategoryAxis(),
        ),
      )),
    );
  }
}
