import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/index.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/attentance_day.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/times_of_work_list_view.dart';



class DatesDayView extends StatelessWidget{
  const DatesDayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height * 0.3 ,

      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: 75,

                   child: ListView.builder(
                      itemCount: 31,
                      shrinkWrap: true,

                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: TimesOfWorkListView(),
                        );
                      }),
                ),
              ),
              ),

            const AttendanceDay(),
          ],
        ),
      ),
    ));
  }
}




