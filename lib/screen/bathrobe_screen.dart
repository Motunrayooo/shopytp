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
        title: Text(
          'BathRobes',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: ListView(
        children: dummyBathRobes.map((bathRob) {
          return BathRobeWidget(
            title: bathRob.title,
            id: bathRob.id,
            description: bathRob.description,
            image: bathRob.image,
            size: bathRob.size,
            price: double.parse(bathRob.price.toString()),
            size: bathRob.size,
            onpress: () {},
          );
        }).toList(),
      ),
    );
    // );
  }
}