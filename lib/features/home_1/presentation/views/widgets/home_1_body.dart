
import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/styles.dart';
import 'package:my_sons/features/home_1/presentation/views/home_3.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/date_day_view.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/work_hours_view.dart';

class HomeBody extends StatelessWidget{
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0E81CF),
      body:  Column(
        children:[
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
              child: Column(
                children: [
                  CustomAppBar(),
                  SizedBox(
                    height: 22,
                  ),
                  WorkHoursView(
                    color: Color.fromARGB(255, 168, 244, 228),
                     baseText: 'حضرت',
                      text: 'في الموعد المحدد',
                    textColor: Color(0xff01D9AC),
                    ),
                ],
              ),
            ),
          DatesDayView(),
    ]
      ),
    );
  }
}





