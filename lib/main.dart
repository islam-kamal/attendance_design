import 'package:flutter/material.dart';
import 'package:my_sons/features/BottomNavigationBar/bottom_navigation_bar_widget.dart';
import 'package:my_sons/features/home_1/presentation/views/home_1.dart';
import 'package:my_sons/features/tasksTable/presentation/views/tasks_table_view.dart';
import 'package:my_sons/features/tasksTable/presentation/views/widgets/tasks_table_body_widget.dart';
// import 'features/BottomNavigationBar/bottom_navigation_bar_widget.dart';

void main() {
  runApp(const MySons());
}
class MySons extends StatelessWidget{
  const MySons({Key?key}) : super(key:key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      navigatorKey: navigatorKey,
      theme: ThemeData.light(),
      title: 'my title',
      home:   const TasksTableViewBody(),
      debugShowCheckedModeBanner: false,
    );
  }
}
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
//LoginView
//Home1
//Home2
//Home3