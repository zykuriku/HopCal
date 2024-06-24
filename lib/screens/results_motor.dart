import 'package:dc/screens/table%20screen.dart';
import 'package:dc/utilities/calculations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilities/table class.dart';

class Result extends StatelessWidget {
  Result(
      {required this.i1, required this.i2, required this.i3, required this.i4});
  final double i1;
  final double i2;
  final double i3;
  final double i4;

  @override
  Widget build(BuildContext context) {
    Calc calculation = Calc(v: 230, i1: i1, i2: i2, i3: i3, i4: i4);
    calculation.calcMotor();



    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('DC Motor'),
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
                    calculation.retMCuLoss().toStringAsFixed(2),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Field Loss: " + calculation.retMFLoss().toStringAsFixed(2),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Stray Loss per machine: " +
                    calculation.retSPMLoss().toStringAsFixed(2),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Total Loss: " + calculation.retMTLoss().toStringAsFixed(2),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Input Power: " + calculation.retMIP().toStringAsFixed(2),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Output Power: " + calculation.retMOP().toStringAsFixed(2),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Efficiency: " + calculation.retME().toStringAsFixed(2),
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 1.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(onPressed: (){
                    Get.back();
                  },
                    heroTag: UniqueKey(),
                    backgroundColor: Colors.redAccent,
                  child: Text(
                    'Add more',
                    textAlign: TextAlign.center,
                  ),
                  ),
      
                  FloatingActionButton(
      
                      onPressed: (){
                    Get.to(TableScreen());
                  },
                    heroTag: UniqueKey(),
                    backgroundColor: Colors.redAccent,
                  child: Center(child: Text('Show Table',
                    textAlign: TextAlign.center,)),
                  ),
                ],
              ),
              SizedBox(
                height: 1.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
