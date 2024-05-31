import 'package:flutter/material.dart';
import 'package:practice_flutter/providers/foods.dart';
import 'package:practice_flutter/screen/food_details.dart';
import 'package:practice_flutter/screen/food_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Foods(),
    child: MaterialApp(
      title: 'Flutter Foods',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FoodList(),
      debugShowCheckedModeBanner: false,
      routes: {
        FoodDetails.routeName: (context) => FoodDetails()
      },
    ),
    );
  }
}
