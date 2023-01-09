import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/screens/chatScreen/edit_contact_screen.dart';
import 'package:ios_design/widgets/icon_container_widget.dart';
import 'package:ios_design/widgets/text_icon_container_widget.dart';

import '../../widgets/custom_text.dart';

class ContactInfoScreen extends StatelessWidget {
  const ContactInfoScreen({super.key, required this.name, required this.image});
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        navigationBar: CupertinoNavigationBar(
          padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
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
                Container(
                  width: 80,
                  // height: 30.h,
                  child: Text(
                    name,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                        color: CupertinoColors.activeBlue, fontSize: 15.sp),
                  ),
                )
              ],
            ),
          ),
          trailing: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => EditContactScreen()));
              },
              child: const CustomText(
                text: 'Edit',
                color: CupertinoColors.activeBlue,
              )),
          middle: const CustomText(
            text: 'Contact Info',
            weight: FontWeight.w600,
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 280.h,
              child: Image.asset(
                'assets/images/Rectangle (1).png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 50.h,
              decoration: BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: name,
                        weight: FontWeight.w500,
                        size: 16,
                      ),
                      CustomText(
                        text: '+1 202 555 0181',
                        weight: FontWeight.w400,
                        size: 12,
                        color: AppColors.lightGrayColor,
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 100.w,
                  // ),
                  Row(
                    children: [
                      Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(237, 237, 255, 1)),
                        child: Icon(
                          CupertinoIcons.chat_bubble_fill,
                          color: CupertinoColors.activeBlue,
                          size: 15.sp,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(237, 237, 255, 1)),
                        child: Icon(
                          CupertinoIcons.video_camera_solid,
                          color: CupertinoColors.activeBlue,
                          size: 15.sp,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(237, 237, 255, 1)),
                        child: Icon(
                          CupertinoIcons.phone_fill,
                          color: CupertinoColors.activeBlue,
                          size: 15.sp,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(
              height: 0,
              thickness: 1.h,
              indent: 10.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 50.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: 'Design adds value faster, than it adds cost',
                    size: 13,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const CustomText(
                    text: 'Dec 18, 2018',
                    size: 11,
                    color: AppColors.lightGrayColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 40.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const IconContainerWidget(
                        image: CupertinoIcons.photo_fill,
                        color: CupertinoColors.activeBlue,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        text: 'Media, Links, and Docs',
                        size: 15.sp,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: '12',
                        color: AppColors.lightGrayColor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Icon(
                        CupertinoIcons.right_chevron,
                        size: 15.sp,
                        color: AppColors.lightGrayColor,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 40.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const IconContainerWidget(
                        image: CupertinoIcons.star,
                        color: CupertinoColors.systemYellow,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        text: 'Starred Messages',
                        size: 15.sp,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: '12',
                        color: AppColors.lightGrayColor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Icon(
                        CupertinoIcons.right_chevron,
                        size: 15.sp,
                        color: AppColors.lightGrayColor,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 40.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const IconContainerWidget(
                        image: CupertinoIcons.search,
                        color: CupertinoColors.activeOrange,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        text: 'Chat Search',
                        size: 15.sp,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: '12',
                        color: AppColors.lightGrayColor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Icon(
                        CupertinoIcons.right_chevron,
                        size: 15.sp,
                        color: AppColors.lightGrayColor,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 40.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const IconContainerWidget(
                        image: CupertinoIcons.speaker_3,
                        color: CupertinoColors.activeGreen,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        text: 'Mute',
                        size: 15.sp,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: '12',
                        color: AppColors.lightGrayColor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Icon(
                        CupertinoIcons.right_chevron,
                        size: 15.sp,
                        color: AppColors.lightGrayColor,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
