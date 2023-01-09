import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconContainerWidget extends StatelessWidget {
  const IconContainerWidget({super.key, this.icon, this.color, this.image});
  final String? icon;
  final dynamic color;
  final IconData? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.h,
      width: 26.w,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5.r)),
      child: icon != null
          ? Image.asset(
              icon!,
              scale: 4,
              // height: 10.h,
              // width: 10.w,
            )
          : Icon(
              image,
              size: 15.h,
              color: CupertinoColors.white,
            ),
    );
  }
}
