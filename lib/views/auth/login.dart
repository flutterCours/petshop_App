import 'package:flutter/material.dart';
import 'package:petshop_app/shared/colors.dart';
import 'package:petshop_app/shared/styles.dart';
import 'package:petshop_app/shared/widgets/auth_text_button.dart';
import 'package:petshop_app/shared/widgets/custom_text_field.dart';
import 'package:petshop_app/shared/widgets/primary_button.dart';
import 'package:petshop_app/size_configs.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Hello,',
                    style: AppStyles.styleSemiBold40(context),
                  ),
                  Text(
                    'Welcome Back!',
                    style: AppStyles.styleSemiBold40(context),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Water is life. Water is a basic human need. In various lines of life, humans need water.',
                    style: AppStyles.styleRegular14(context),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const CustomTextFormField(
                    hitText: 'Email',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomTextFormField(
                    hitText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  divider(context),
                  const SizedBox(
                    height: 24,
                  ),
                  authWithGoogleAndFacebook(context),
                  const Spacer(),
                  const AuthTextButton(
                    question: 'Don’t have an account?',
                    textButton: 'Create Account',
                  ),
                  PrimaryButton(
                    onPressed: () {},
                    disabled: false,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Padding divider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Divider(
              color: AppColors.colorDivider,
            ),
          ),
          Expanded(
              child: Text(
            'or',
            style: AppStyles.styleRegular12(context)
                .copyWith(color: AppColors.colorDivider),
            textAlign: TextAlign.center,
          )),
          const Expanded(
            child: Divider(
              color: AppColors.colorDivider,
            ),
          ),
        ],
      ),
    );
  }

  Row authWithGoogleAndFacebook(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              side: const BorderSide(
                color: AppColors.colorBorder,
              ),
            ),
            onPressed: () {},
            icon: Image.asset(
              "assets/images/google.png",
              width: 30,
              height: 30,
            ),
            label: Text(
              'Google',
              style: AppStyles.styleSemiBold14(context)
                  .copyWith(color: AppColors.colorPrimary),
            ),
          ),
        ),
        const SizedBox(
          width: 15.0,
        ),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              side: const BorderSide(
                color: AppColors.colorBorder,
              ),
            ),
            onPressed: () {},
            child: Text(
              'Facebook',
              style: AppStyles.styleSemiBold14(context)
                  .copyWith(color: AppColors.colorPrimary),
            ),
          ),
        ),
      ],
    );
  }
}
