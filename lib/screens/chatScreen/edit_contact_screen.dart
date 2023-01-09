import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';

import '../../widgets/custom_text.dart';

class EditContactScreen extends StatelessWidget {
  const EditContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'Cancle',
                  color: CupertinoColors.activeBlue,
                ),
              )),
          trailing: GestureDetector(
              onTap: () {},
              child: const CustomText(
                  text: 'Save', color: AppColors.lightGrayColor)),
          middle: const CustomText(
            text: 'Edit contact',
            weight: FontWeight.w600,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: ListView(
            shrinkWrap: true,
            // padding: EdgeInsets.only(left: 15.w),
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: const [
                  Expanded(
                    flex: 1,
                    child: CustomText(
                      text: 'Name',
                      weight: FontWeight.w600,
                    ),
                  ),
                  // SizedBox(
                  //   width: 45.w,
                  // ),
                  Expanded(
                    flex: 3,
                    child: CustomText(
                      text: 'Martha',
                    ),
                  ),
                ],
              ),
              Row(children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 3,
                  child: Divider(
                    // indent: 85.w,
                    thickness: 1.sp,
                  ),
                )
              ]),
              Row(
                children: [
                  Expanded(flex: 1, child: Container()),
                  const Expanded(
                    flex: 3,
                    child: CustomText(
                      text: 'Craig',
                    ),
                  ),
                ],
              ),
              Row(children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 3,
                  child: Divider(
                    // indent: 85.w,
                    thickness: 1.sp,
                  ),
                )
              ]),
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: CustomText(
                      text: 'Phone',
                      weight: FontWeight.w600,
                    ),
                  ),
                  // SizedBox(
                  //   width: 45.w,
                  // ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(right: 12.w),
                        height: 43.h,
                        decoration:
                            const BoxDecoration(color: CupertinoColors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                              text: 'New Zealand',
                              size: 16,
                            ),
                            Icon(
                              CupertinoIcons.right_chevron,
                              color: AppColors.lightGrayColor,
                              size: 15.sp,
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Row(children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 3,
                  child: Divider(
                    // indent: 85.w,
                    thickness: 1.sp,
                  ),
                )
              ]),
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: CustomText(
                      text: 'Mobile',
                      weight: FontWeight.w600,
                    ),
                  ),
                  // SizedBox(
                  //   width: 45.w,
                  // ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(right: 12.w),
                        height: 43.h,
                        decoration:
                            const BoxDecoration(color: CupertinoColors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                              text: '+1 202 555 0181',
                              size: 16,
                            ),
                            Icon(
                              CupertinoIcons.right_chevron,
                              color: AppColors.lightGrayColor,
                              size: 15.sp,
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Divider(
                // indent: 85.w,
                thickness: 1.sp,
              ),
              SizedBox(
                height: 5.h,
              ),
              const CustomText(
                text: 'more fields',
                color: CupertinoColors.activeBlue,
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomText(
                text: 'Delete Contact',
                color: CupertinoColors.systemRed,
              )
            ],
          ),
        ));
  }
}
