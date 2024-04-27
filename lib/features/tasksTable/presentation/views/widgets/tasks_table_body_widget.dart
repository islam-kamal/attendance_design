import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/styles.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/times_of_work_list_view.dart';
import 'package:my_sons/features/tasksTable/presentation/views/widgets/custom_app_bar_widget.dart';
import 'package:my_sons/features/tasksTable/presentation/views/widgets/custom_days_list_view_widget.dart';
import 'package:my_sons/features/tasksTable/presentation/views/widgets/custom_tasks_cards_widget.dart';

class TasksTableViewBody extends StatelessWidget{
  const TasksTableViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomTasksAppBar(title: 'Notifications', onPress: (){},),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const CustomDaysListView(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.add,size: 28,),
                Column(
                  children: [
                    Text('مهام اليوم',style: Styles.textStyle16.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),),
                    const Opacity(
                        opacity: 0.9,
                        child: Text('3 مهام هذا اليوم',style: Styles.textStyle16,)),
                  ],
                )
              ],
            ),
            ),
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CustomTasksCards(),

                  );
                }),
          ],
        ),
      ),
    );
  }
}