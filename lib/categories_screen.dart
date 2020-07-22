import 'package:flutter/material.dart';

import './dummy_data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // GridView.buildren to build dynamic amount of grid which we don't know
    return Scaffold(
      appBar: AppBar(title: const Text('Delhi Meal')),
      body: GridView(
          children: DUMMY_CATEGORIES
              .map((catData) => CategoryItem(catData.title, catData.color))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              // items should be sized with height and width
              mainAxisSpacing: 20,
              crossAxisSpacing: 20
              // spacing between columns and rows of grid
              )
          // as many items as fitted in available screen
          ),
    );
  }
}
