import 'package:custom_bottom_bar/features/home/home_screen.dart';
import 'package:custom_bottom_bar/features/nav_bar/controller/nav_bar_controller.dart';
import 'package:custom_bottom_bar/features/nav_bar/views/about.dart';
import 'package:custom_bottom_bar/features/nav_bar/views/call.dart';
import 'package:custom_bottom_bar/features/nav_bar/views/profile.dart';
import 'package:custom_bottom_bar/features/nav_bar/views/settings.dart';
import 'package:custom_bottom_bar/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavScreens extends ConsumerWidget {
  const NavScreens({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
        final navBarState = ref.watch(navBarController);
    return AnimatedSwitcher(
      duration:const Duration(milliseconds: 20),
      switchInCurve: Curves.easeOutSine,
      transitionBuilder: (child, animation) => ScaleTransition(
        scale: animation,
        child: child,
      ),
      child: navBarState.navBar == NavBarEnum.homeScreen
          ? HomeScreen(
              size: size,
            )
          : navBarState.navBar == NavBarEnum.aboutScreen
              ? About(
                  size: size,
                )
              : navBarState.navBar == NavBarEnum.callScreen
                  ? Call(size: size)
                  : navBarState.navBar == NavBarEnum.profileScreen
                      ? Profile(size: size)
                      : Settings(size: size),
    );
  }
}

