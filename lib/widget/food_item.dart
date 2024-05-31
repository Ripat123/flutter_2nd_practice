import 'package:flutter/material.dart';
import 'package:practice_flutter/providers/food.dart';
import 'package:practice_flutter/screen/food_details.dart';
import 'package:provider/provider.dart';

class FoodItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final foods = Provider.of<Food>(context);
    return Card(
      color: Colors.amber,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: GridTile(
        child: InkWell(splashColor: Colors.black87,
          autofocus: true,
          onTap: (){
            Navigator.of(context).pushNamed(
              FoodDetails.routeName,
              arguments: foods.id
            );
          },
          child: Image.network(foods.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(backgroundColor: Colors.black45,
          title: Text(foods.title,style: TextStyle(color: Colors.white,fontSize: 17),),
          subtitle: Text('${foods.price} BDT',style: TextStyle(fontSize: 13),),
          trailing: IconButton(
            icon: Icon(foods.isFavourite?Icons.shopping_cart_rounded:Icons.shopping_cart_outlined),
            onPressed: (){
              foods.changeFavStatus();
            },
          ),
        ),
      ),
    );
  }

}