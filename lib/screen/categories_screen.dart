import 'package:flutter/material.dart';
import 'package:shopytp/dummy_data.dart';
import 'package:shopytp/widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories',
            style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body:  ListView(
        children: dummyCategories.map((cat) {
          return CategoryItem(id: cat.id, title: cat.title, image: cat.image);
        }).toList(),
      ),
    );
  }
}
