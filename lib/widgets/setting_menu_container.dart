import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/widgets/custom_text.dart';
import 'package:ios_design/widgets/icon_container_widget.dart';

import '../core/app_colors.dart';

class SettingMenuContainer extends StatelessWidget {
  const SettingMenuContainer(
      {super.key, this.color, required this.icon, required this.menu});
  final dynamic color;
  final String icon;
  final String menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 45.h,
      decoration: BoxDecoration(color: CupertinoColors.white),
      child: Row(
        children: [
          IconContainerWidget(
            icon: icon,
            color: color,
          ),
          SizedBox(
            width: 13.w,
          ),
          CustomText(
            text: menu,
            size: 16,
          ),
          // SizedBox(
          //   width: 150.w,
          // ),
          const Spacer(),
          Icon(
            CupertinoIcons.right_chevron,
            size: 14.h,
            color: AppColors.grayColor,
          )
        ],
      ),
    );
  }
}
