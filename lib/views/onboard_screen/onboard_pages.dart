import 'dart:async';

import 'package:flutter/material.dart';
import 'package:petshop_app/shared/colors.dart';
import 'package:petshop_app/shared/constant.dart';
import 'package:petshop_app/shared/styles.dart';
import 'package:petshop_app/shared/widgets/primary_button.dart';
import 'package:petshop_app/views/auth/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPages extends StatefulWidget {
  @override
  State<OnBoardingPages> createState() => _OnBoardingPagesState();
}

class _OnBoardingPagesState extends State<OnBoardingPages> {
  Future SeenOnBoard() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setBool('seenOnBoard', true);
  }

  @override
  void initState() {
    super.initState();
    SeenOnBoard();
  }

  PageController _pageController = PageController();
  int pageViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  pageViewIndex = value;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Text(
                        onBoardingContent[index]['title'],
                        style: AppStyles.styleSemiBold40(context),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/onboarding_images/onboard.png"),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          onBoardingContent[index]['body'],
                          style: AppStyles.styleRegular14(context),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: onBoardingContent.length,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => _dotIndicator(
                          index: index,
                          width: 10,
                          height: 10,
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: onBoardingContent.length),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          PrimaryButton(onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          }),
        ],
      ),
    );
  }

  AnimatedContainer _dotIndicator(
          {required int index,
          required double height,
          required double width}) =>
      AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: pageViewIndex == index
              ? AppColors.colorPrimary
              : AppColors.colorBorder,
          shape: BoxShape.circle,
        ),
      );
}
