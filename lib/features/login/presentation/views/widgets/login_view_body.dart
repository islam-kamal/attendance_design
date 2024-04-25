import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/styles.dart';
import 'package:my_sons/features/login/presentation/views/widgets/form_login_view.dart';

class LoginViewBody extends StatelessWidget{
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 72,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset('images/reportLogo1.png')),
            const SizedBox(height: 28,),
            const Text(
              '👋 مرحبًا بعودتك',
              style: Styles.textStyle28,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
              'أبنائي',
              style: Styles.textStyle28.copyWith(
                color: const Color(0xff01DAAD),
                fontWeight: FontWeight.bold
              ),
              ),
                  const Text(
              ' الي',
              style: Styles.textStyle28,
              ),
                ],
              ),
              const SizedBox(height: 4,),
              const Opacity(
                opacity: 0.3,
                child: Text('مرحبًا بك، قم بتسجيل الدخول للمتابعة',style: Styles.textStyle14,)),
                const SizedBox(height: 26,),
                const FormLoginView(),
        ],
          ),
      ),
    ),
        )
      ],
    );

    
  }
}

