import 'package:dc/utilities/table class.dart';
import 'package:get/get.dart';

import 'list controller.dart';
class Calc {
  Calc(
      {required this.v,
      required this.i1,
      required this.i2,
      required this.i3,
      required this.i4});
  final double i1;
  final double i2;
  final double i3;
  final double i4;
  final int v;

  double _a = 0;
  double _b = 0;
  double _motorArmatureCuLoss = 0;
  double _motorFieldLoss = 0;
  double _strayLossPerMachine = 0;
  double _totalStrayLoss = 0;
  double _totalMotorLoss = 0;
  double _motorInputPower = 0;
  double _motorEfficiency = 0;
  double _motorOutputPower = 0;
  double _generatorArmatureCuLoss = 0;
  double _generatorFieldLoss = 0;

  double _generatorEfficiency = 0;
  double _totalGeneratorLoss = 0;
  double _generatorInputPower = 0;
  double _generatorOutputPower = 0;

  ListController listController = Get.find<ListController>();


  void calcMotor() {
    TableObject tableObject=TableObject();
    print("in motor");
    tableObject.i1=i1;
    tableObject.i2=i1;
    tableObject.i3=i3;
    tableObject.i4=i4;
    _a = i1 + i2;
    _b = i2 + i4;
    double motorRa = 1.3;
    _motorArmatureCuLoss = _a * _a * motorRa;
    tableObject.ArmatureCuLoss=_motorArmatureCuLoss;
    _motorFieldLoss = v * i3;
    tableObject.FieldLoss=_motorFieldLoss;
    _totalStrayLoss = v * i1 - (_a * _a * motorRa + _b * _b * motorRa);
    tableObject.totalStrayLoss=_totalStrayLoss;
    _strayLossPerMachine = _totalStrayLoss / 2;
    tableObject.strayLossPerMachine=_strayLossPerMachine;
    _totalMotorLoss =
        _motorArmatureCuLoss + _motorFieldLoss + _strayLossPerMachine;
    tableObject.totalLoss=_totalMotorLoss;
    _motorInputPower = _a * v + i3 * v;
    tableObject.InputPower=_motorInputPower;
    _motorOutputPower = _motorInputPower - _totalMotorLoss;
    tableObject.OutputPower=_motorOutputPower;
    _motorEfficiency = (_motorOutputPower / _motorInputPower) * 100;
    tableObject.Efficiency=_motorEfficiency;

    listController.addItem(tableObject);




  }

  void calcGenerator() {
    TableObject tableObject=TableObject();
    print('in gen');
    double generatorRa = 1.0;
    double motorRa = 1.3;
    _a = i1 + i2;
    _b = i2 + i4;
    _generatorArmatureCuLoss = _b * _b * generatorRa;
    tableObject.ArmatureCuLoss=_generatorArmatureCuLoss;
    _generatorFieldLoss = v * i4;
    tableObject.FieldLoss=_generatorFieldLoss;
    _totalStrayLoss = v * i1 - (_a * _a * motorRa + _b * _b * motorRa);
    tableObject.totalStrayLoss=_totalStrayLoss;
    _strayLossPerMachine = _totalStrayLoss / 2;
    tableObject.strayLossPerMachine=_strayLossPerMachine;
    _totalGeneratorLoss =
        _generatorArmatureCuLoss + _generatorFieldLoss + _strayLossPerMachine;
    tableObject.totalLoss=_totalGeneratorLoss;
    _generatorOutputPower = v * i2;
    tableObject.OutputPower=_generatorOutputPower;
    _generatorInputPower = _generatorOutputPower + _totalGeneratorLoss;

    tableObject.InputPower=_generatorInputPower;

    _generatorEfficiency = (_generatorOutputPower / _generatorInputPower) * 100;
    tableObject.Efficiency=_generatorEfficiency;
    listController.addItem(tableObject);
  }


  double retMCuLoss() {

    return _motorArmatureCuLoss;
  }

  double retGCuLoss() {
    return _generatorArmatureCuLoss;
  }

  double retMFLoss() {
    return _motorFieldLoss;
  }

  double retGFLoss() {
    return _generatorFieldLoss;
  }

  double retSPMLoss() {
    return _strayLossPerMachine;
  }

  double retMTLoss() {
    return _totalMotorLoss;
  }

  double retGTLoss() {
    return _totalGeneratorLoss;
  }

  double retMIP() {
    return _motorInputPower;
  }

  double retGIP() {
    return _generatorInputPower;
  }

  double retMOP() {
    return _motorOutputPower;
  }

  double retGOP() {
    return _generatorOutputPower;
  }

  double retME() {
    return _motorEfficiency;
  }

  double retGE() {
    return _generatorEfficiency;
  }
}
