import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_colors.dart';
import '../../widgets/custom_text.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
        middle: const CustomText(text: 'Starred Messages'),
      ),
      child: ListView(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            height: 43.h,
            decoration: const BoxDecoration(color: CupertinoColors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: 'Privacy',
                  size: 16,
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: AppColors.lightGrayColor,
                  size: 15.sp,
                )
              ],
            ),
          ),
          Divider(
            height: 0,
            indent: 13.w,
            thickness: 1,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            height: 43.h,
            decoration: const BoxDecoration(color: CupertinoColors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: 'Security',
                  size: 16,
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: AppColors.lightGrayColor,
                  size: 15.sp,
                )
              ],
            ),
          ),
          Divider(
            height: 0,
            indent: 13.w,
            thickness: 1,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            height: 43.h,
            decoration: BoxDecoration(color: CupertinoColors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: 'Two-Step Verification',
                  size: 16,
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: AppColors.lightGrayColor,
                  size: 15.sp,
                )
              ],
            ),
          ),
          Divider(
            height: 0,
            indent: 13.w,
            thickness: 1,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            height: 43.h,
            decoration: BoxDecoration(color: CupertinoColors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: 'Change Number',
                  size: 16,
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: AppColors.lightGrayColor,
                  size: 15.sp,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            height: 43.h,
            decoration: const BoxDecoration(color: CupertinoColors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: 'Request Account Info',
                  size: 16,
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: AppColors.lightGrayColor,
                  size: 15.sp,
                )
              ],
            ),
          ),
          Divider(
            height: 0,
            indent: 13.w,
            thickness: 1,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            height: 43.h,
            decoration: const BoxDecoration(color: CupertinoColors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: 'Delete My Account',
                  size: 16,
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: AppColors.lightGrayColor,
                  size: 15.sp,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
