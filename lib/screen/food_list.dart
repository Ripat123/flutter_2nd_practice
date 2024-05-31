import 'package:flutter/material.dart';
import 'package:practice_flutter/widget/foods_bundle.dart';

class FoodList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Foods App'),
        actions: [
          Badge(label: Text('20'),offset: Offset.fromDirection(3),
            child: IconButton(onPressed: (){},
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.black87,
              ),
            ),
          )
        ],
      ),
      body: FoodsBundle(),
    );
  }

}