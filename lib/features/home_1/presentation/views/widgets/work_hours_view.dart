import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/styles.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/work_details_view.dart';

class WorkHoursView extends StatelessWidget {
  const WorkHoursView(
      {super.key,
      required this.color,
      required this.baseText,
      required this.text,
      required TextStyle style});

  final Color color;
  final String baseText;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            '07:00',
            style: Styles.textStyle24.copyWith(color: Colors.white),
          ),
          Opacity(
            opacity: 0.9,
            child: Text(
              'الاثنين 01 نوفمبر',
              style: Styles.textStyle14.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 135,
            height: 138,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  color,
                  Color(0xffFFFFFF),
                ],
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  'images/3dicons.png',
                ),
                Text(baseText),
                Text(text),
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.9,
                child: Text(
                  'المكتب,مدينة النصر, القاهرة',
                  style: Styles.textStyle14.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Image.asset(
                'images/Vector.png',
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          const WorkDetailsView(),
        ],
      ),
    );
  }
}
