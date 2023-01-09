import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';

import '../../widgets/custom_text.dart';

class StarredMessages extends StatelessWidget {
  const StarredMessages({super.key});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Oval (11).png',
            height: 120.h,
            width: 120.w,
          ),
          SizedBox(
            height: 20.h,
          ),
          const CustomText(
            text: 'No Starred Messages',
            weight: FontWeight.w600,
            color: AppColors.lightGrayColor,
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              textAlign: TextAlign.center,
              'Tap and hold on any message to star it, so you can easily find it later.',
              style: TextStyle(
                color: AppColors.lightGrayColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
