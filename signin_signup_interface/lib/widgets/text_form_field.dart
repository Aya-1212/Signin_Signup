import 'package:flutter/material.dart';
import 'package:signin_signup_interface/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool? obscrueText ;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon,
     this.obscrueText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscrueText?? false ,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon ?? SizedBox(),
        label: Text(label),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primary)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primary)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.red)),
      ),
    );
  }
}
