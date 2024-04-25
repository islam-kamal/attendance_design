
import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/styles.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_sons/features/home_1/presentation/views/widgets/work_hours_view.dart';

class HomeBody extends StatelessWidget{
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E81CF),
      body:  Padding(
            padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 12),
            child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 22,
                ),
                WorkHoursView(
                  color: Color.fromARGB(255, 168, 244, 228),
                   baseText: 'حضرت',
                  style: Styles.textStyle16.copyWith(
                    color: const Color(0xff01D9AC),
                    fontWeight: FontWeight.bold,
                  ),
                    text: 'في الموعد المحدد',
                  
                  ),

              ],
            ),
          ),
          
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
             BottomNavigationBarItem(
                label: 'fytfy',
                icon:  Icon(Icons.home,color: Colors.black,)),
             BottomNavigationBarItem(
               label: 'fytfy',
                icon:  Icon(Icons.terrain,color: Colors.black,)),
             BottomNavigationBarItem(
               label: 'fytfy',
                icon:  Icon(Icons.bluetooth,color: Colors.black,)),
             BottomNavigationBarItem(
                label: 'fytfy',
                icon:  Icon(Icons.cake,color: Colors.black,)),
             BottomNavigationBarItem(
               label: 'fytfy',
                icon:  Icon(Icons.edit,color: Colors.black,)),
          ],
        ),
    );
  }
}


// class DatesDay extends StatelessWidget{
//   const DatesDay({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.99,
//       height: MediaQuery.of(context).size.height * 0.3,
//       color: Colors.white,
//     );
//   }
// }

