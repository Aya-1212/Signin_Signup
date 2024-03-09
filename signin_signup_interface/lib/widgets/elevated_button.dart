import 'package:flutter/material.dart';
import 'package:signin_signup_interface/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;

  const CustomElevatedButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
           style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary,
           foregroundColor: AppColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                  )),
          onPressed: () {},
          child: Text(text),
                  ),
    );
  }
}
