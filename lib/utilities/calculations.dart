import 'package:flutter/material.dart';
import 'dart:math';

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

  void calcMotor() {
    print("in motor");
    _a = i1 + i2;
    _b = i2 + i4;
    double motorRa = 1.3;
    _motorArmatureCuLoss = _a * _a * motorRa;
    _motorFieldLoss = v * i3;
    _totalStrayLoss = v * i1 - (_a * _a * motorRa + _b * _b * motorRa);
    _strayLossPerMachine = _totalStrayLoss / 2;
    _totalMotorLoss =
        _motorArmatureCuLoss + _motorFieldLoss + _strayLossPerMachine;
    _motorInputPower = _a * v + i3 * v;
    _motorOutputPower = _motorInputPower - _totalMotorLoss;
    _motorEfficiency = (_motorOutputPower / _motorInputPower) * 100;
  }

  void calcGenerator() {
    double generatorRa = 1.0;
    _generatorArmatureCuLoss = _b * _b * generatorRa;
    _generatorFieldLoss = v * i4;
    _totalGeneratorLoss =
        _generatorArmatureCuLoss + _generatorFieldLoss + _strayLossPerMachine;
    _generatorOutputPower = v * i2;
    _generatorInputPower = _generatorOutputPower + _totalGeneratorLoss;

    _generatorEfficiency = (_generatorOutputPower / _generatorInputPower) * 100;
  }

  double retMCuLoss() {
    print(_motorArmatureCuLoss);
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
