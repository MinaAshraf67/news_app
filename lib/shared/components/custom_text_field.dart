// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news_app/shared/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  String label;
  double borderRadius;
  CustomTextField({
    required this.label,
    this.borderRadius = 20.0,
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        label: Text(
          label,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: MyColors.unselectedItem,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: MyColors.primaryColor,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
