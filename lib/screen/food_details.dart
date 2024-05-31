
import 'package:flutter/material.dart';
import 'package:practice_flutter/providers/foods.dart';
import 'package:provider/provider.dart';


class FoodDetails extends StatelessWidget{
  static const routeName = 'food_details';
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as String;
    final foods = Provider.of<Foods>(context);
    final food = foods.find(id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Details'),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.all(10),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.network(food.imageUrl,
              fit: BoxFit.cover,
              height: 250,
              width: double.infinity,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(food.title,
                style: TextStyle(
                fontSize: 18,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Text('BDT ${food.price}',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: Text(food.description,),
            )
          ],
        ),
      ),
    );
  }

}