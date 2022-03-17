import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Avatars")),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text("EO"),
              backgroundColor: Colors.green[900],
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 150,
        backgroundImage: NetworkImage(
            "https://www.pcinvasion.com/wp-content/uploads/2021/06/Genshin-Impact-Kazuha-guide-weapons-artifacts-talents-1b.jpg"),
      )),
    );
  }
}
