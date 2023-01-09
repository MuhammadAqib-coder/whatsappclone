import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_colors.dart';
import '../../widgets/custom_text.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      navigationBar: CupertinoNavigationBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                CupertinoIcons.left_chevron,
                size: 20.sp,
              ),
              const CustomText(
                text: 'Settings',
                color: CupertinoColors.activeBlue,
              )
            ],
          ),
        ),
        middle: const CustomText(text: 'Edit Profile'),
      ),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            height: 180.h,
            decoration: const BoxDecoration(color: CupertinoColors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/Oval (9).png'))),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    CustomText(
                      color: AppColors.lightGrayColor,
                      text:
                          'Enter your name and add an optional profile picture',
                      size: 11.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Divider(
                  height: 0,
                  indent: 4.w,
                ),
                SizedBox(
                  height: 7.h,
                ),
                const CustomText(text: 'Sabohiddin'),
                SizedBox(
                  height: 7.h,
                ),
                Divider(
                  height: 0,
                  indent: 4.w,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: const CustomText(
              text: 'Phone number',
              color: AppColors.lightGrayColor,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            height: 40.h,
            decoration: const BoxDecoration(color: CupertinoColors.white),
            child: const CustomText(text: '+998 90 943 32 00'),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: const CustomText(
              text: 'About',
              color: AppColors.lightGrayColor,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            height: 40.h,
            decoration: const BoxDecoration(color: CupertinoColors.white),
            child:
                const CustomText(text: 'Digital goodies designer - Pixsellz'),
          )
        ],
      ),
    );
  }
}
