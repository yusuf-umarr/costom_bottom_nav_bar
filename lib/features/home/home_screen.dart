import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  final Size size;
  const HomeScreen({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.red,
      child: Center(
        child: Text("Home"),
      ),
    );
  }
}
