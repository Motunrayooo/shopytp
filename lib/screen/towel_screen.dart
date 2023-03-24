import 'package:flutter/material.dart';
import 'package:shopytp/dummy_data.dart';
import 'package:shopytp/widget/towel_item.dart';

class TowelScreen extends StatelessWidget {
  static const id = 'towel_screen';

  const TowelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 2,
      //   ),
     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column(
          children: dummyTowel.map((towel) {
            return TowelWidget(
              title: towel.title,
              id: towel.id,
              description: towel.description,
              image: towel.image,
              price: double.parse(towel.price.toString()),
              onpress: () => Navigator.pushNamed(context, TowelScreen.id),
            );
          }).toList(),
        ),
     ),
    );
  }
}
