import 'package:flutter/material.dart';
import 'features/BottomNavigationBar/bottom_navigation_bar_widget.dart';

void main() {
  runApp(const MySons());
}
class MySons extends StatelessWidget{
  const MySons({Key?key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'my title',
      home:  MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//LoginView
//Home1
//Home2
//Home3