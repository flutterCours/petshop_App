import 'package:flutter/material.dart';
import 'package:petshop_app/shared/colors.dart';
import 'package:petshop_app/shared/styles.dart';

class AuthTextButton extends StatelessWidget {
  const AuthTextButton({
    super.key,
    required this.question,
    required this.textButton,
  });
  final String question;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: AppStyles.styleRegular12(context)
              .copyWith(color: AppColors.colorBlack),
        ),
        const SizedBox(
          width: 5,
        ),
        TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {},
          child: Text(
            textButton,
            style: AppStyles.styleBold12(context)
                .copyWith(color: AppColors.colorPrimary),
          ),
        ),
      ],
    );
  }
}
