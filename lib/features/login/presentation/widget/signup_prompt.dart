import 'package:flutter/material.dart';
import 'package:stem_ui/constant/colors.dart';
import 'package:stem_ui/constant/strings.dart';

class SignupPrompt extends StatelessWidget {
  const SignupPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.signupPrompt,
        style: TextStyle(color: AppColors.textGrey),
      ),
    );
  }
}