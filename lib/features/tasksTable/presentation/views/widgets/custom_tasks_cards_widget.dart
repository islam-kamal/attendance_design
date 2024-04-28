import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/styles.dart';

class CustomTasksCards extends StatefulWidget{
  const CustomTasksCards({super.key});

  @override
  State<CustomTasksCards> createState() => _CustomTasksCardsState();
}

class _CustomTasksCardsState extends State<CustomTasksCards> {
/*
  bool value = false;
*/

  @override
  Widget build(BuildContext context) {
    return  Card(
        color: const Color(0xff7B7B7B),
    shape: const RoundedRectangleBorder(
    borderRadius:  BorderRadius.all(Radius.circular(11))
    ),
      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkbox(
            tristate: true,
            value: true,
            onChanged: (bool? Value){
              setState(() {

              });
            },
            activeColor: const Color(0xff01D9AC),
          ),
          Column(
            children: [
              Text(
                'مراجعه كشف المرتبات',
                style: Styles.textStyle16.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
              Text('مراجعه كشف المرتبات وتحقق من وصولها')
            ],
          )
        ],
      ),
      ),
    );
  }
}