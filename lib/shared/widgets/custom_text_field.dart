import 'package:flutter/material.dart';
import 'package:petshop_app/shared/colors.dart';
import 'package:petshop_app/shared/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hitText,
    this.obscureText = false,
  });

  final String hitText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintStyle: AppStyles.styleMedium14(context)
            .copyWith(color: AppColors.colorPhilippineSilver),
        hintText: hitText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.colorBorder,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.colorBorder,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: AppColors.colorPrimary,
            width: 2,
          ),
        ),
      ),
    );
  }
}
