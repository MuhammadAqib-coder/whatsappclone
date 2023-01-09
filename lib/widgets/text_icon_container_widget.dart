import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/widgets/custom_text.dart';

import '../core/app_colors.dart';

class TextIconContainerWidget extends StatelessWidget {
  const TextIconContainerWidget(
      {super.key, required this.leadingText, required this.trailingText});
  final String leadingText;
  final String trailingText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      height: 43.h,
      decoration: BoxDecoration(color: CupertinoColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: leadingText,
            size: 16,
          ),
          Row(
            children: [
              CustomText(
                text: trailingText,
                size: 16,
                color: AppColors.lightGrayColor,
              ),
              Icon(
                CupertinoIcons.right_chevron,
                color: AppColors.lightGrayColor,
                size: 15.sp,
              )
            ],
          )
        ],
      ),
    );
  }
}
