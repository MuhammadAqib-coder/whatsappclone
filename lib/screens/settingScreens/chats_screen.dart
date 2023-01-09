import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_colors.dart';
import '../../cubits/notificationCubits/message_cubit.dart';
import '../../widgets/custom_text.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

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
          middle: const CustomText(text: 'Chats'),
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
                    text: 'Change Wallpaper',
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
                  left: 15.w, bottom: 15.h, top: 10.h, right: 20.w),
              child: const CustomText(
                text:
                    'Automatically save photos and videos you receive to your iPhone’s Camera Roll.',
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
                    text: 'Chat Backup',
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
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              height: 40.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: const CustomText(
                text: 'Archive All Chats',
                color: CupertinoColors.activeBlue,
              ),
            ),
            Divider(
              height: 0,
              indent: 13.w,
              thickness: 1.sp,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              height: 40.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: const CustomText(
                text: 'Clear All Chats',
                color: CupertinoColors.systemRed,
              ),
            ),
            Divider(
              height: 0,
              indent: 13.w,
              thickness: 1.sp,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              height: 40.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: const CustomText(
                text: 'Delete All Chats',
                color: CupertinoColors.systemRed,
              ),
            ),
          ],
        ));
  }
}
