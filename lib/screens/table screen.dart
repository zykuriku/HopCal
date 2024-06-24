import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilities/list controller.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  ListController myController = Get.put(ListController());
  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Observations Table',

          style: TextStyle(
              fontSize: 30.0
          ),),

      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Container(

                      child: Text('Index',
                      style: TextStyle(
                        fontWeight: FontWeight.w700
                      ),
                      textAlign: TextAlign.center,
                      ),
                    )),
                    Expanded(child: Text('Copper loss (J)',
                      style: TextStyle(
                          fontWeight: FontWeight.w700
                      ),
                      textAlign: TextAlign.center,)),
                    Expanded(child: Text('Field loss (J)',style: TextStyle(
                        fontWeight: FontWeight.w700
                    ),textAlign: TextAlign.center,)),
                    Expanded(child: Text('Stray loss per machine (J)',style: TextStyle(
                        fontWeight: FontWeight.w700
                    ),textAlign: TextAlign.center,)),
                    Expanded(child: Text('Total loss (J)',style: TextStyle(
                        fontWeight: FontWeight.w700
                    ),textAlign: TextAlign.center,)),
                    Expanded(child: Text('Output Power (W)',style: TextStyle(
                        fontWeight: FontWeight.w700
                    ),textAlign: TextAlign.center,)),
                    Expanded(child: Text('Efficiency (%)',style: TextStyle(
                        fontWeight: FontWeight.w700
                    ),textAlign: TextAlign.center,)),
                  ],
                ),
              ),


              Expanded(
                child: ListView.builder(itemCount: myController.table.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                  return Row(
                    children: [
                      Expanded(child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.redAccent
                              )
                          ),
                          child: Text((index+1).toString()+".",
                            textAlign: TextAlign.center,))),
                      Expanded(child: Container(
                
                        child: Text(myController.table[index].ArmatureCuLoss.toStringAsFixed(2),
                          textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.redAccent
                        )
                      ),
                      )),
                      Expanded(child: Container(
                
                          child: Text(myController.table[index].FieldLoss.toStringAsFixed(2),
                            textAlign: TextAlign.center,),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.redAccent
                            )
                        ),
                      ),
                
                
                      ),
                
                
                      Expanded(child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.redAccent
                              )
                          ),
                
                          child: Text(myController.table[index].strayLossPerMachine.toStringAsFixed(2),
                            textAlign: TextAlign.center,))),
                      Expanded(child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.redAccent
                              )
                          ),
                          child: Text(myController.table[index].totalLoss.toStringAsFixed(2),
                            textAlign: TextAlign.center,))),
                      Expanded(child: Container(
                
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.redAccent
                              )
                          ),
                          child: Text(myController.table[index].OutputPower.toStringAsFixed(2),
                            textAlign: TextAlign.center,))),
                      Expanded(child: Container(
                
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.redAccent
                              )
                          ),
                          child: Text(myController.table[index].Efficiency.toStringAsFixed(2),
                            textAlign: TextAlign.center,))),
                    ],
                  );
                    }),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: FloatingActionButton(onPressed: (){
                  Get.toNamed('/graph');
                },backgroundColor: Colors.redAccent,
                child: Container(
                  
                  height: 20.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Text('Graph',


                  textAlign: TextAlign.center,),
                ),
                ),
              )
            ],
          ),
        ),
      
      
      
      ),
    );
  }
}
