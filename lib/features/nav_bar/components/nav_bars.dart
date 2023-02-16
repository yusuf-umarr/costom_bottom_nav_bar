import 'package:custom_bottom_bar/features/nav_bar/components/bottom_painter.dart';
import 'package:custom_bottom_bar/features/nav_bar/controller/nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavBars extends ConsumerWidget {
  const NavBars({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: size.width,
      height: 80,
      // color: Colors.white,
      child: Stack(children: [
        CustomPaint(
          size: Size(size.width, 80),
          painter: BNBCustomPainter(),
        ),
        Center(
          heightFactor: 0.6,
          child: FloatingActionButton(
            onPressed: () => ref
                .read(navBarController.notifier)
                .updateNavBarIndex(2),
            backgroundColor: Colors.orange,
            elevation: 0.1,
            child: const Icon(Icons.shopping_basket),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: size.height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () => ref
                      .read(navBarController.notifier)
                      .updateNavBarIndex(0),
                  icon: const Icon(Icons.home)),
              IconButton(
                  onPressed: () => ref
                      .read(navBarController.notifier)
                      .updateNavBarIndex(1),
                  icon: const Icon(Icons.abc)),
              SizedBox(
                width: size.width * 0.20,
              ),
              IconButton(
                  onPressed: () => ref
                      .read(navBarController.notifier)
                      .updateNavBarIndex(3),
                  icon: const Icon(Icons.man)),
              IconButton(
                  onPressed: () => ref
                      .read(navBarController.notifier)
                      .updateNavBarIndex(4),
                  icon: const Icon(Icons.settings)),
            ],
          ),
        )
      ]),
    );
  }
}
