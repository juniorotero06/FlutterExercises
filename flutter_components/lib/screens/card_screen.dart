import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Card Widget")),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  "https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg",
              textImg: "Un hermoso paisaje",
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlKXVC66ha52Wtp_wt098suCEqsPPOiQcl2NWtFPOEyt4a1l5wLLik16iaqTrDN5ipUYQ&usqp=CAU",
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  "https://predios.com.co/wp-content/uploads/2021/06/travel-landscape-01.jpg",
              textImg: "Espectaculares sitios",
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
