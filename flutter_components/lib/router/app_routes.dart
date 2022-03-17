import 'package:flutter/material.dart';

import 'package:flutter_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        routes: "listview1",
        icon: Icons.list_alt,
        name: "List View 1",
        screen: const Listview1Screen()),
    MenuOptions(
        routes: "listview2",
        icon: Icons.list,
        name: "List View 2",
        screen: const Listview2Screen()),
    MenuOptions(
        routes: "alert",
        icon: Icons.info,
        name: "Alert Screen",
        screen: const AlertScreen()),
    MenuOptions(
        routes: "card",
        icon: Icons.card_giftcard,
        name: "Card Screen",
        screen: const CardScreen()),
    MenuOptions(
        routes: "avatar",
        icon: Icons.person_outline_outlined,
        name: "Avatar Screen",
        screen: const AvatarScreen()),
    MenuOptions(
        routes: "animated",
        icon: Icons.animation,
        name: "Animated Screen",
        screen: const AnimatedScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes
          .addAll({option.routes: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const CardScreen());
  }
}
