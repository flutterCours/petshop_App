import 'package:flutter/material.dart';
import 'package:petshop_app/shared/colors.dart';
import 'package:petshop_app/shared/styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.disabled,
  });
  final void Function()? onPressed;
  final bool? disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ElevatedButton(
        onPressed: disabled == true ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.colorPrimary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              "Get Started",
              style: AppStyles.styleBold16(context)
                  .copyWith(color: AppColors.colorWhite),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
