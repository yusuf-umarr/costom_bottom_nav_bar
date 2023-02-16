import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Call extends StatelessWidget {
    final Size size;

  const Call({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.yellow,
      width: size.width,
      height: size.height,
      child: Center(
        child: Text("Call"),
      ),
    );
  }
}
