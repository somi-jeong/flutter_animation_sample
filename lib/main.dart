import 'package:flutter/material.dart';
import 'package:flutter_animation/car_spec.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            CarSpec(),
            Text("Z（ガソリン車 2WD）"),
            Text("2,152,700円（税込）"),
            Text("WLTCモード"),
            Text("20.7km/L"),
            Text("エンジン・ハイブリッド"),
            Text("1.2L"),
          ],
        ),
      ),
    );
  }
}
