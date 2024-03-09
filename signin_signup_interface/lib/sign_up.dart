// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:signin_signup_interface/colors.dart';
import 'package:signin_signup_interface/sign_in.dart';
import 'package:signin_signup_interface/widgets/elevated_button.dart';
import 'package:signin_signup_interface/widgets/text_form_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => __SignUpViewState();
}

class __SignUpViewState extends State<SignUpView> {
 bool isVisable = true;
  @override
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
                    backgroundImage: AssetImage('assets/eraasoft.jpg'),
                    radius: 75),
                Text(
                  'Create an account',
                  style: TextStyle(color: AppColors.primary, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  prefixIcon: Icons.person,
                  label: 'Enter Your Name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  prefixIcon: Icons.email,
                  label: 'Enter Your Email',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  obscrueText: isVisable,
                  prefixIcon: Icons.lock,
                  label: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () { setState(() {
                        isVisable = !isVisable ;
                      });},
                    icon: Icon(
                      Icons.remove_red_eye_rounded,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                CustomElevatedButton(
                  text: 'Regsiter',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('If you have an account !!',
                        style:
                            TextStyle(color: AppColors.primary, fontSize: 14)),
                    SizedBox(
                      width: 2,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => SignInView(),
                          ));
                        },
                        child: Text('login now',
                            style: TextStyle(
                                color: AppColors.primary, fontSize: 13)))
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
