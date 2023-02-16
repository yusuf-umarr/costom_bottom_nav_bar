import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class About extends StatelessWidget {
  final Size size;
  const About({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: size.width,
      height: size.height,
      child: Center(
        child: Text("About"),
      ),
    );
  }
}
