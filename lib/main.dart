import 'package:flutter/material.dart';
import 'package:last_time/basket_counter_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: basketCounter(),
    );
  }
}