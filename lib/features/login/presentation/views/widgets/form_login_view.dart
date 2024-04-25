import 'package:flutter/material.dart';
import 'package:my_sons/core/utils/styles.dart';

class FormLoginView extends StatefulWidget{
  const FormLoginView({super.key});

  @override
  State<FormLoginView> createState() => _FormLoginViewState();
}

class _FormLoginViewState extends State<FormLoginView> {
    bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          TextFormField(
            textAlign: TextAlign.right,
            autocorrect: true,
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
             decoration: const InputDecoration(
              labelStyle: TextStyle(
    
                   decorationStyle: TextDecorationStyle.solid,
                overflow: TextOverflow.ellipsis,
                color: Color.fromARGB(255, 52, 30, 117),
              ),
              labelText: 'عنوان البريد الإلكتروني',
             ),
          ),
          const SizedBox(
            height: 16,
            ),
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             border: Border.all(color: Colors.black)
           ),
           child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Text("email00"),
                 TextFormField(

                   textAlign: TextAlign.right,
                   obscureText: _isHidden,
                   autocorrect: false,
                   autofocus: true,
                   keyboardType: TextInputType.visiblePassword,

                   decoration:  InputDecoration(
                     border: InputBorder.none,
                     contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                     prefix: InkWell(
                       onTap: _togglePasswordView,
                       child: Icon(_isHidden ? Icons.visibility : Icons.visibility_off,),
                     ),
                     floatingLabelAlignment: FloatingLabelAlignment.start,
                   ),
                 )
               ],
             ),
           ),
         ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 320,
            height: 55,
            child: ElevatedButton(
              onPressed: (){},
               style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 52, 30, 117),
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
               ),
               ),
               child: const Text(
                'تسجيل الدخول',
               style: Styles.textStyle16,
               ),
          )
          )
        ],
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}