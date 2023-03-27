import 'package:flutter/material.dart';
import 'package:shopytp/dummy_data.dart';
import 'package:shopytp/widget/bathrobe_item.dart';


class BathRobeScreen extends StatelessWidget {
  static const id = 'bathRob_screen';

  const BathRobeScreen({Key? key}) : super(key: key);

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
        children: dummyBathRobes.map((bathRob) {
          return BathRobeWidget(
            title: bathRob.title,
            id: bathRob.id,
            description: bathRob.description,
            image: bathRob.image,
            size: bathRob.size,
            price: double.parse(bathRob.price.toString()),
            onpress: () => Navigator.pushNamed(context, BathRobeScreen.id),
          );
        }).toList(),
      ),
    );
    // );
  }
}