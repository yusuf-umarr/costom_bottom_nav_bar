
import 'package:custom_bottom_bar/features/nav_bar/components/nav_bars.dart';
import 'package:custom_bottom_bar/features/nav_bar/components/nav_screens.dart';
import 'package:custom_bottom_bar/features/nav_bar/controller/nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavBarContainer extends ConsumerWidget {
  const NavBarContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white10,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: SafeArea(
                  child: NavScreens( size: size),
                )),

            //Bottom nav bar
            Positioned(
                bottom: 0,
                left: 0,
                child: NavBars(size: size),),
          ],
        ));
  }
}


