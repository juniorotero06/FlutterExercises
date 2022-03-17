import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading:
                Icon(Icons.account_balance_rounded, color: AppTheme.primary),
            title: Text("Titulo"),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pulvinar.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text("Cancel")),
                TextButton(onPressed: () {}, child: const Text("Ok"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
