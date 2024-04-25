
import 'package:flutter/material.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/work_hours_view.dart';

class Home3 extends StatelessWidget{
  const Home3({super.key});

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
                  color: Color.fromARGB(255, 226, 113, 113),
                   baseText: 'تأخير',
                    style:TextStyle(color: Colors.black) ,
                     text: 'عن الموعد المحدد',),
              ],
            ),
          ),
    );
  }
}