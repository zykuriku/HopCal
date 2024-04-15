import 'package:flutter/material.dart';
import 'screens/input_screen.dart';

void main() {
  runApp(HopCal());
}

class HopCal extends StatelessWidget {
  const HopCal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(),
      home: Input(),
    );
  }
}
