import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatelessWidget {
    final Size size;

  const Profile({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.green,
      width: size.width,
      height: size.height,
      child: Center(
        child: Text("Profile"),
      ),
    );
  }
}
