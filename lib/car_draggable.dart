import 'package:flutter/material.dart';

class DraggableBox extends StatefulWidget {
  const DraggableBox({super.key});

  @override
  DraggableBoxState createState() => DraggableBoxState();
}

class DraggableBoxState extends State<DraggableBox> {
  Offset _offset = const Offset(200, 250);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                left: _offset.dx,
                top: _offset.dy,
                child: LongPressDraggable(
                  feedback: Image.network(
                    "https://docs.flutter.dev/assets/images/dash/Dashatars.png",
                    height: 200,
                    color: Colors.transparent,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                  child: Image.network(
                    "https://docs.flutter.dev/assets/images/dash/Dashatars.png",
                    height: 200,
                  ),
                  onDragEnd: (details) {
                    setState(() {
                      double adjustment = MediaQuery.of(context).size.height -
                          constraints.maxHeight;
                      _offset = Offset(
                          details.offset.dx, details.offset.dy - adjustment);
                    });
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
