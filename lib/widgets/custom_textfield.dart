import 'package:flutter/material.dart';
import 'package:stem_ui/constant/colors.dart';
import 'package:stem_ui/constant/strings.dart';


class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;

  const CustomSearchField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        hintText: AppStrings.searchHint,
        filled: true,
        fillColor: AppColors.searchField,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}