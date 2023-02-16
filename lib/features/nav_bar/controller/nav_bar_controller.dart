import 'package:custom_bottom_bar/features/nav_bar/controller/nav_bar_state.dart';
import 'package:custom_bottom_bar/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavBarController extends StateNotifier<NavBarState> {
  NavBarController() : super(NavBarState.initial());

  /*
  _storiesTypeController.stream.listen((storyType) {
    switch (storyType) {
      case StoriesType.newStories:
        _getArticlesAndUpdate(_newIds);
        break;
      case StoriesType.topStories:
        _getArticlesAndUpdate(_topIds);
        break;
      default:
        print('default');
    }
  });
  */

  void updateNavBarIndex(int index) {
    if (index == 0) {
      state = state.copyWith(navBar: NavBarEnum.homeScreen);
    } else if (index == 1) {
      state = state.copyWith(navBar: NavBarEnum.aboutScreen);
    } else if (index == 2) {
      state = state.copyWith(navBar: NavBarEnum.callScreen);
    } else if (index == 3) {
      state = state.copyWith(navBar: NavBarEnum.profileScreen);
    } else if (index == 4) {
      state = state.copyWith(navBar: NavBarEnum.settingsScreen);
    }

    // switch (index) {
    //   case index==1:
    //   state =

    //     break;
    //   default:
    // }
  }
}

final navBarController = StateNotifierProvider<NavBarController, NavBarState>(
    (ref) => NavBarController());
