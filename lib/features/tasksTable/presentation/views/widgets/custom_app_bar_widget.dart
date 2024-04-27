import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sons/main.dart';

class CustomTasksAppBar extends StatelessWidget    implements PreferredSizeWidget{
  final String title;
  Function onPress;
  CustomTasksAppBar({required this.title,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      toolbarHeight:MediaQuery.of(context).size.height/15,
      leading: const Icon(Icons.arrow_back_ios),
      centerTitle: true,
      title: const Text("Notifications",
      ),
      backgroundColor: const Color(0xff0E81CF),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius:  BorderRadius.vertical(
          bottom:  Radius.elliptical(
              MediaQuery.of(context).size.width, MediaQuery.of(context).size.width*0.2),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MediaQuery.of(navigatorKey.currentContext!).size.height/8);

}