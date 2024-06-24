import 'package:dc/screens/results_generator.dart';
import 'package:flutter/material.dart';
import 'package:dc/screens/results_motor.dart';
import 'package:get/get.dart';
import '../utilities/calculations.dart';
import '../utilities/list controller.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  late double i1;
  late double i2;
  late double i3;
  late double i4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.put(ListController());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Hopkin\'s test',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enter i1: ",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 80.0,
                        height: 40.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            i1 = double.parse(value);
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enter i2: ",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 80.0,
                        height: 40.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            i2 = double.parse(value);
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enter i3: ",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 40.0,
                        width: 80.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            i3 = double.parse(value);
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enter i4: ",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 40.0,
                        width: 80.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            i4 = double.parse(value);
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.brown, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20.0),
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Result(
                                            i1: i1,
                                            i2: i2,
                                            i3: i3,
                                            i4: i4,
                                          )));
                            },
                            child: Text(
                              'Generate values for DC motor',
                              style: TextStyle(fontSize: 18.0),
                            )),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20.0),
                        child: MaterialButton(
                            onPressed: () {
                              Calc calculation =
                                  Calc(v: 230, i1: i1, i2: i2, i3: i3, i4: i4);
                              calculation.calcGenerator();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Result2(
                                          i1: i1, i2: i2, i3: i3, i4: i4)));
                            },
                            child: Text(
                              'Generate values for DC generator',
                              style: TextStyle(fontSize: 18.0),
                            )),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
