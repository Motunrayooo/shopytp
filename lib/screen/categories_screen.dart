import 'package:flutter/material.dart';
import 'package:shopytp/dummy_data.dart';
import 'package:shopytp/widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body:  ListView(
        // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 200,
        //   mainAxisSpacing: 20,
        //   crossAxisSpacing: 20,
        //   childAspectRatio: 3 / 2,
        // ),
        children: dummyCategories.map((cat) {
          return CategoryItem(id: cat.id, title: cat.title, image: cat.image);
        }).toList(),
      ),
    );
  }
}
