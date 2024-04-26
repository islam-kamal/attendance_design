
import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/styles.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/custom_app_bar.dart';
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
              padding: EdgeInsets.symmetric(vertical: 50,horizontal: 12),
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

          DatesDay(),
    ]
      ),
    );
  }
}


class DatesDay extends StatelessWidget{
  const DatesDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.263,

       decoration: const BoxDecoration(
           color: Colors.white,
         borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))
       ),
       child: Column(
         children: [
           Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
           child: Container(
             height: 75,
             child: ListView.builder(
                 itemCount: 31,
                 shrinkWrap: true,

                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index) {
                   return const Padding(
                     padding: EdgeInsets.symmetric(horizontal: 8),
                     child: timesOfWorkListView(),
                   );
                 }),
           ),),

         ],
       ),

    );

  }
}


class timesOfWorkListView extends StatelessWidget{
  const timesOfWorkListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

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

    );
  }

}

