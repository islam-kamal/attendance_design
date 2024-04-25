import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationViewBody extends StatelessWidget{
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 444,
          height: 77,
          color: const Color.fromARGB(255, 7, 114, 255),
          
          child: const Text('الاشعارات'),
        ),
      ],
    );
  }
}