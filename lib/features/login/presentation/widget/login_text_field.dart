import 'package:flutter/material.dart';
import 'package:stem_ui/constant/colors.dart';

class LoginTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool isPassword;

  const LoginTextField({
    super.key,
    required this.hint,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: AppColors.searchField,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}