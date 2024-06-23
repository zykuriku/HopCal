import 'package:dc/utilities/calculations.dart';
import 'package:flutter/material.dart';

class Result2 extends StatelessWidget {
  Result2(
      {required this.i1, required this.i2, required this.i3, required this.i4});
  final double i1;
  final double i2;
  final double i3;
  final double i4;

  @override
  Widget build(BuildContext context) {
    Calc calculation = Calc(v: 230, i1: i1, i2: i2, i3: i3, i4: i4);
    calculation.calcMotor();
    calculation.calcGenerator();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('DC Generator'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 1.0,
            ),
            Text(
              "Armature Cu Loss: " +
                  calculation.retGCuLoss().toStringAsFixed(2),
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Field Loss: " + calculation.retGFLoss().toStringAsFixed(2),
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Stray Loss per machine: " +
                  calculation.retSPMLoss().toStringAsFixed(2),
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Total Loss: " + calculation.retGTLoss().toStringAsFixed(2),
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Input Power: " + calculation.retGIP().toStringAsFixed(2),
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Output Power: " + calculation.retGOP().toStringAsFixed(2),
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Efficiency: " + calculation.retGE().toStringAsFixed(2),
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}
