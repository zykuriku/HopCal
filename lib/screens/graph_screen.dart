import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utilities/list controller.dart';

class ChartData {
  final double x;
  final double y;

  ChartData(this.x, this.y);
}


class GraphScreen extends StatelessWidget {
  final String? from = Get.arguments as String?;

  get listController => null;

  @override
  Widget build(BuildContext context) {
    List<ChartData> chartdata=[];
    
    if(from=="motor") {
      ListController listController = Get.find<ListController>();

      for (int i = 0; i < listController.table.length; i++) {
        chartdata.add(ChartData(listController.table[i].OutputPower,
            listController.table[i].Efficiency));
      }
    }
    
    else{
      GenListController listController = Get.find<GenListController>();

      for (int i = 0; i < listController.table.length; i++) {
        chartdata.add(ChartData(listController.table[i].OutputPower,
            listController.table[i].Efficiency));
      }
    }


    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                            child: SfCartesianChart(
                  title: ChartTitle(text: 'Efficiency vs Power'),
                  legend: Legend(isVisible: true),
                  primaryXAxis: NumericAxis(),
                  primaryYAxis: NumericAxis(),


                  series: [
                    LineSeries<ChartData,double>(
                        dataSource: chartdata,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y)
                  ],
                            ),
                          ),
                )),
            TextButton(onPressed: (){

              Get.toNamed('/');

            },
    child: Text('Home',
    style: TextStyle(
      color: Colors.black
    ),),
    style: TextButton.styleFrom(
    // Text color
    backgroundColor: Colors.redAccent, // Button background color
    // Disabled color
    shadowColor: Colors.black, // Shadow color
    elevation: 5, // Elevation (shadow effect)
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10), // Rounded corners
    side: BorderSide(color: Colors.red, width: 2), // Border
    ),
                ))
          ],
        ),
      ),
    );
  }
}
