import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/cubits/notificationCubits/message_cubit.dart';
import 'package:ios_design/widgets/custom_text.dart';

import '../../cubits/notificationCubits/group_cubit.dart';
import '../../cubits/notificationCubits/preview_cubit.dart';
import '../../widgets/text_icon_container_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        navigationBar: CupertinoNavigationBar(
          leading: GestureDetector(
            onTap: () {},
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
          middle: CustomText(text: 'Notifications'),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text(
              'WARNING: Push Notifications are disabled. To\n enable visit:\n iPhone Settings > Notifications > WhatsApp',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              thickness: 2.sp,
              indent: 10.w,
              endIndent: 10.w,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, bottom: 4.h),
              child: const CustomText(
                text: 'Message notifications',
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
                    text: 'Show Notifications',
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
            Divider(
              height: 0,
              thickness: 1.sp,
              indent: 10.w,
            ),
            const TextIconContainerWidget(
              leadingText: 'Sound',
              trailingText: 'Note',
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, bottom: 4.h),
              child: const CustomText(
                text: 'Group notifications',
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
                    text: 'Show Notifications',
                    size: 16,
                  ),
                  BlocBuilder<GroupCubit, bool>(builder: (context, state) {
                    return CupertinoSwitch(
                        value: state,
                        onChanged: (value) {
                          context.read<GroupCubit>().changeState(value);
                        });
                  })
                ],
              ),
            ),
            Divider(
              height: 0,
              thickness: 1.sp,
              indent: 10.w,
            ),
            const TextIconContainerWidget(
                leadingText: 'Sound', trailingText: 'Note'),
            SizedBox(
              height: 25.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 55.h,
              decoration: BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomText(
                        text: 'In-App Notifications',
                        size: 16,
                      ),
                      CustomText(
                        text: 'Banners, Sounds, Vibrate',
                        size: 11,
                      )
                    ],
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
              height: 25.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 43.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Show Preview',
                    size: 16,
                  ),
                  BlocBuilder<PreviewCubit, bool>(builder: (context, state) {
                    return CupertinoSwitch(
                        value: state,
                        onChanged: (value) {
                          context.read<PreviewCubit>().changeState(value);
                        });
                  })
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            const Align(
              alignment: Alignment.center,
              child: CustomText(
                color: AppColors.grayColor,
                text: 'Preview message text inside new message notifications.',
                size: 12,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 12.w),
              height: 30.h,
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              child: CustomText(
                text: 'Reset Notification Settings',
                size: 16,
                color: CupertinoColors.systemRed,
              ),
            )
          ],
        ));
  }
}
