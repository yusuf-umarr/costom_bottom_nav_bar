// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:custom_bottom_bar/utils/enum.dart';

class NavBarState {
  final NavBarEnum navBar;

  NavBarState({required this.navBar});

  factory NavBarState.initial() {
    return NavBarState(navBar: NavBarEnum.homeScreen);
  }

  NavBarState copyWith({
    NavBarEnum? navBar,
  }) {
    return NavBarState(
      navBar: navBar ?? this.navBar,
    );
  }
}
