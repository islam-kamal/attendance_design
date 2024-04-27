import 'package:flutter/cupertino.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/times_of_work_list_view.dart';

class CustomDaysListView extends StatelessWidget{
  const CustomDaysListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ]
    );
  }
}