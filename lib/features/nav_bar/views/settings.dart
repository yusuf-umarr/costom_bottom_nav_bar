import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Settings extends StatelessWidget {
  final Size size;

  const Settings({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: size.width,
      height: size.height,
      child: Center(
        child: Text("Settings"),
      ),
    );
  }
}
