import 'package:flutter/material.dart';
import 'package:jake_testing_area/main.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        return MaterialPageRoute(builder: (_) => SecondPage(data: args));
    }
  }
}