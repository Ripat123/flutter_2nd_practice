import 'package:flutter/material.dart';
import 'package:practice_flutter/widget/food_item.dart';
import 'package:provider/provider.dart';

import '../providers/foods.dart';

class FoodsBundle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fdData = Provider.of<Foods>(context);
    final foods = fdData.list;

    return GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 3/2
        ),
        itemCount: foods.length,
        itemBuilder: (context, index) => ChangeNotifierProvider(
            create: (_) => foods[index],
          child: FoodItem(),
        ),
    );
  }

}