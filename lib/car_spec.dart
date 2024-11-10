import 'package:flutter/material.dart';

class CarSpec extends StatefulWidget {
  const CarSpec({super.key});

  @override
  State<CarSpec> createState() => _CarSpecState();
}

class _CarSpecState extends State<CarSpec> {
  double targetValue = 200;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: targetValue),
      duration: const Duration(milliseconds: 500),
      builder: (BuildContext context, double size, Widget? child) {
        return InkWell(
          onTap: () {
            setState(() {
              targetValue = targetValue == 200 ? 250 : 200;
            });
          },
          child: Image.asset(
            'assets/images/car.png',
            width: size,
            height: size,
          ),
        );
      },
    ));
  }
}
