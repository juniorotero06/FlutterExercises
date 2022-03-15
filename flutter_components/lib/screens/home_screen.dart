import 'package:flutter/material.dart';
import 'package:flutter_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Componentes de Flutter")),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.account_balance_rounded),
                  title: const Text("Nombre de Ruta"),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview2Screen());
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, "listview2");
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
