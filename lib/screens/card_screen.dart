import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          children: const [
            CustomCardType1(),
            CustomCardType2(
              title: 'Lindo Paisaje',
              imageUrl:
                  'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
            ),
            CustomCardType2(
              imageUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
            ),
            CustomCardType2(
              imageUrl:
                  'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg',
            ),
            CustomCardType2(
              imageUrl:
                  'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
            )
          ],
        ));
  }
}
