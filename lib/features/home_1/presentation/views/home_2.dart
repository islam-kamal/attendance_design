
import 'package:flutter/material.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/work_hours_view.dart';

class Home2 extends StatelessWidget{
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0E81CF),
      body: Padding(
            padding: EdgeInsets.symmetric(vertical: 50,horizontal: 12),
            child: Column(
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 22,
                ),
                WorkHoursView(
                  color: Colors.white,
                   baseText: 'متبقي5:26 دقائق',
                    style:TextStyle(color: Colors.black) ,
                     text: ' علي موعد الحضور',),
              ],
            ),
          ),
    );
  }
}