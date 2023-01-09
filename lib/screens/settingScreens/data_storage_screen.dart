import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_colors.dart';
import '../../cubits/notificationCubits/message_cubit.dart';
import '../../widgets/custom_text.dart';

class DataStorageScreen extends StatelessWidget {
  const DataStorageScreen({super.key});

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
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, bottom: 5.h),
              child: const CustomText(
                text: 'Media auto-download',
                size: 12,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 43.h,
              decoration: BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Photos',
                    size: 16,
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: 'Wi-Fi and Cellular',
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
            ),
            Divider(
              height: 0,
              thickness: 1.sp,
              indent: 12.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 43.h,
              decoration: BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Audio',
                    size: 16,
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: 'Wi-Fi',
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
            ),
            Divider(
              height: 0,
              thickness: 1.sp,
              indent: 12.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 43.h,
              decoration: BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Videos',
                    size: 16,
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: 'Wi-Fi',
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
            ),
            Divider(
              height: 0,
              thickness: 1.sp,
              indent: 12.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 43.h,
              decoration: BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Documents',
                    size: 16,
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: 'Wi-Fi',
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
            ),
            Divider(
              height: 0,
              thickness: 1.sp,
              indent: 12.w,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              height: 40.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: const CustomText(
                text: 'Reset Auto-Download Settings',
                color: AppColors.lightGrayColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 5.h, bottom: 20.h, left: 13.w, right: 10.w),
              child: Text(
                'Voice Messages are always automatically downloaded for the best communication experience.',
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightGrayColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, bottom: 5.h),
              child: const CustomText(
                text: 'Call Settings',
                size: 12,
                color: AppColors.lightGrayColor,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 43.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Low Data Usage',
                    size: 16,
                  ),
                  BlocBuilder<MessageCubit, bool>(builder: (context, state) {
                    return CupertinoSwitch(
                        value: state,
                        onChanged: (value) {
                          context.read<MessageCubit>().changeState(value);
                        });
                  })
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 15.w, bottom: 10.h, top: 10.h, right: 20.w),
              child: const CustomText(
                text:
                    'Lower the amount of data used during a WhatsAoo call on cellular.',
                size: 12,
                color: AppColors.lightGrayColor,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 43.h,
              decoration: BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Network Usage',
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 43.h,
              decoration: BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Storage Usage',
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
        ));
  }
}
