import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/index.dart';


class AttendanceDay extends StatelessWidget{
  const AttendanceDay({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      // child: Align(
      //   alignment: Alignment.centerRight,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'مواعيد اليوم',
                textAlign: TextAlign.right,
                style: Styles.textStyle16.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.16,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,

                  margin: const EdgeInsets.all(10),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 11),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('مكتب مدينة نصر',style: Styles.textStyle16.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13
                              ),),
                              SizedBox(height: 3,),
                              Text('الأحد, الثلاثاء, الخميس',style: Styles.textStyle16.copyWith(
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 3,),
                              Row(
                                children: [
                                  Text('05.30'),
                                  SizedBox(width: 3,),
                                  Image.asset('images/icon-clock.png'),
                                  SizedBox(width: 16,),
                                  Text('07.00'),
                                  SizedBox(width: 3,),
                                  Image.asset('images/iconClockkk.png')
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('06' , style: Styles.textStyle28.copyWith(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,

                              ),),
                              Text('SUN' , style: Styles.textStyle28.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,

                              ),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
      // ),
    );
  }
}