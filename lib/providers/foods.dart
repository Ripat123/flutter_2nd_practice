import 'package:flutter/foundation.dart';

import 'food.dart';

class Foods extends ChangeNotifier{
  List<Food> _list = [
    Food(id: '01', title: 'Burger', description: 'Spicy Burger is Best.', price: 200, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiHdYMwlWM4TjNsQbMo8_nanfCs73NqFTuHVlmiX3lTwrpNAN7FQz6gGHB9Bscf02OLdI&usqp=CAU'),
    Food(id: '02', title: 'Sendwice', description: 'Spicy Sendwice is Best.', price: 100, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeBj8Ms2Ywh5gMofgXiS45nyc78xG3jhKsDxFrReJCd2WjRy4p8rUacwn8djP8KYorS_g&usqp=CAU'),
    Food(id: '03', title: 'Spicy Chicken', description: 'Delicious Spicy Chicken is Best.', price: 250, imageUrl: 'https://media.istockphoto.com/id/835903320/photo/baked-chicken-wings-with-sesame-seeds-and-sweet-chili-sauce-on-white-wooden-board.jpg?s=612x612&w=0&k=20&c=SH8ZCkEKuWD_wxulpntIJ0uD4yRnUf9UXovQwSwrmmA='),
  ];

  List<Food> get list => _list;


  Food find(String id){
    return _list.firstWhere((element) => element.id == id);
  }
}