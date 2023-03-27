import 'package:flutter/material.dart';
import 'package:shopytp/dummy_data.dart';
import 'package:shopytp/widget/bedding_item.dart';

class BeddingScreen extends StatelessWidget {
  static const id = 'bedding_screen';

  const BeddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: ListView(
        // GridView(
        //   shrinkWrap: true,
        //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //     mainAxisExtent: 3,
        //     maxCrossAxisExtent: 2,
        //     mainAxisSpacing: 2,
        //   ),
        // body: SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Column(
        children: dummyBeddings.map((bedding) {
          return BeddingWidget(
            title: bedding.title,
            id: bedding.id,
            description: bedding.description,
            image: bedding.image,
            size: bedding.size,
            price: double.parse(bedding.price.toString()),
            onpress: () => Navigator.pushNamed(context, BeddingScreen.id),
          );
        }).toList(),
      ),
    );
    // );
  }
}
