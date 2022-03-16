import 'package:flutter/cupertino.dart' show IconData, Widget;

class MenuOptions {
  final String routes;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOptions(
      {required this.routes,
      required this.icon,
      required this.name,
      required this.screen});
}
