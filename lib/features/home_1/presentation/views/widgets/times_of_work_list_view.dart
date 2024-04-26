import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/styles.dart';


class TimesOfWorkListView extends StatefulWidget{
  const TimesOfWorkListView({super.key});

  @override
  State<TimesOfWorkListView> createState() => TimesOfWorkListViewState();
}

class TimesOfWorkListViewState extends State<TimesOfWorkListView> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){},
        child: Container(

          width: MediaQuery.of(context).size.width * 0.21,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(11),
            color: Colors.white,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 11),
            child: Column(
              children: [
                Text('06',style: Styles.textStyle24,),
                Text('Sun',style: Styles.textStyle16,),
              ],
            ),
          ),

        ));
  }
}