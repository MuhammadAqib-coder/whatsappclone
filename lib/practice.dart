import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/widgets/custom_text.dart';

import 'core/app_colors.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Container(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 8.h),
          height: 52.h,
          decoration: const BoxDecoration(),
          child: Row(
            children: [
              Container(
                height: 39.h,
                width: 39.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/Oval (1).png'))),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                      text: 'Martin Randolph',
                      weight: FontWeight.w400,
                      size: 16,
                    ),

                    // SizedBox(
                    //   height: 5.h,
                    // ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.phone_fill,
                                size: 15.r,
                                color: AppColors.lightGrayColor,
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              const CustomText(
                                text: 'outgoing',
                                weight: FontWeight.w400,
                                size: 14,
                                color: AppColors.lightGrayColor,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 6.h),
                                child: const CustomText(
                                  text: '10/13/19',
                                  size: 14,
                                  weight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 7.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: Icon(
                                  CupertinoIcons.info_circle,
                                  size: 22.r,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
