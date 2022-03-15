import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("List View 1")),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ...options
                .map(
                  (game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_right),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
