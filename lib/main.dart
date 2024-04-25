import 'package:my_sons/features/login/presentation/views/login_view.dart';

import 'package:flutter/material.dart';
import 'package:my_sons/features/home_1/presentation/views/home_1.dart';
import 'package:my_sons/features/home_1/presentation/views/home_2.dart';
import 'package:my_sons/features/notifications/presentation/views/notifications_view.dart';

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
      home: const LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//LoginView
//Home1
//Home2
//Home3