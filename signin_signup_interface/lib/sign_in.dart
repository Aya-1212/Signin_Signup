// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:signin_signup_interface/colors.dart';
import 'package:signin_signup_interface/sign_up.dart';
import 'package:signin_signup_interface/widgets/text_form_field.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  bool isVisable = true ;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               CircleAvatar(
                    backgroundImage: AssetImage('assets/eraasoft.jpg'), radius: 75),
                Text(
                  'Login to your account',
                  style: TextStyle(color: AppColors.primary, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  
                  prefixIcon: 
                    Icons.email,
                  label: 'Enter Your Email',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  obscrueText:isVisable ,
                 prefixIcon:
                    Icons.lock,
                  label: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisable = !isVisable ;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye_rounded,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('If you haven\'t an account !!',
                        style: TextStyle(color: AppColors.primary, fontSize: 14)),
                        SizedBox(width: 2,),
                        TextButton(onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => SignUpView(),
                          ));
                        }, child: Text('create an account', style: TextStyle(color: AppColors.primary, fontSize: 13)))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}