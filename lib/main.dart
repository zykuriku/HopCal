import 'package:dc/screens/graph_screen.dart';
import 'package:dc/screens/results_generator.dart';
import 'package:dc/screens/results_motor.dart';
import 'package:dc/screens/table%20screen.dart';
import 'package:dc/utilities/list%20controller.dart';
import 'package:flutter/material.dart';
import 'screens/input_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(HopCal());
}

class HopCal extends StatelessWidget {


  get i1 => null;

  get i2 => null;

  get i3 => null;

  get i4 => null;

  ListController listController = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [

        GetPage(name: '/', page: ()=> Input()),
        GetPage(name: '/table', page: ()=> const TableScreen()),
        GetPage(name: '/graph', page: ()=> GraphScreen()),
        GetPage(name: '/generator', page: ()=> Result2(i1: i1, i2: i2, i3: i3, i4: i4)),
        GetPage(name: '/motor', page: ()=> Result(i1: i1, i2: i2, i3: i3, i4: i4)),
      ],
      darkTheme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: Input(),
    );
  }
}
