import 'package:flutter/foundation.dart';

class Food extends ChangeNotifier{

  final String id,title,description,imageUrl;
  final double price;
  bool isFavourite;

  Food({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavourite = false,
});

  changeFavStatus(){
    isFavourite = !isFavourite;
    notifyListeners();
  }

}