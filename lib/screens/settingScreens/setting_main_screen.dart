import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/screens/settingScreens/account_screen.dart';
import 'package:ios_design/screens/settingScreens/chats_screen.dart';
import 'package:ios_design/screens/settingScreens/data_storage_screen.dart';
import 'package:ios_design/screens/settingScreens/edit_profile_screen.dart';
import 'package:ios_design/screens/settingScreens/notification_screen.dart';
import 'package:ios_design/screens/settingScreens/starred_messages.dart';
import 'package:ios_design/widgets/custom_text.dart';
import 'package:ios_design/widgets/setting_menu_container.dart';

class SettingMainScreen extends StatelessWidget {
  const SettingMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      navigationBar: const CupertinoNavigationBar(
        border: Border(),
        backgroundColor: AppColors.appBarColor,
        middle: CustomText(
          text: 'Settings',
          weight: FontWeight.w600,
        ),
      ),
      child: ListView(
        // padding: EdgeInsets.only(left: 16.w, right: 32.w),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (_) => EditProfileScreen()));
            },
            child: Container(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 20.w,
              ),
              height: 70.h,
              decoration: const BoxDecoration(
                color: CupertinoColors.white,
              ),
              child: Row(
                children: [
                  Container(
                    height: 52.h,
                    width: 52.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/Oval (9).png'))),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: const CustomText(
                            text: 'Sabohiddin',
                            size: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              'Digital goodies designer - Pixsellz',
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: Icon(
                                CupertinoIcons.right_chevron,
                                size: 14.h,
                                color: AppColors.grayColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (_) => StarredMessages()));
            },
            child: const SettingMenuContainer(
              icon: 'assets/icons/Star.png',
              color: CupertinoColors.systemYellow,
              menu: 'Starred Messages',
            ),
          ),
          Divider(
            height: 0.h,
            indent: 50.w,
            thickness: 1.0,
          ),
          const SettingMenuContainer(
            icon: 'assets/icons/Shape (4).png',
            color: CupertinoColors.systemGreen,
            menu: 'WhatsApp Web/Desktop',
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => AccountScreen()));
            },
            child: const SettingMenuContainer(
              icon: 'assets/icons/Shape (2).png',
              color: Color.fromRGBO(57, 122, 254, 1),
              menu: 'Account',
            ),
          ),
          Divider(
            height: 0.h,
            indent: 50.w,
            thickness: 1.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => ChatsScreen()));
            },
            child: const SettingMenuContainer(
              icon: 'assets/icons/Shape (1).png',
              color: CupertinoColors.activeGreen,
              menu: 'Chats',
            ),
          ),
          Divider(
            height: 0.h,
            indent: 50.w,
            thickness: 1.0,
          ),
          Divider(
            height: 0.h,
            indent: 50.w,
            thickness: 1.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (_) => NotificationScreen()));
            },
            child: const SettingMenuContainer(
              icon: 'assets/icons/Shape (3).png',
              color: CupertinoColors.systemRed,
              menu: 'Notifications',
            ),
          ),
          Divider(
            height: 0.h,
            indent: 50.w,
            thickness: 1.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (_) => DataStorageScreen()));
            },
            child: const SettingMenuContainer(
              icon: 'assets/icons/Shape (5).png',
              color: CupertinoColors.systemGreen,
              menu: 'Data and Storage Usage',
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {
              _showActionSheet(context);
            },
            child: const SettingMenuContainer(
              icon: 'assets/icons/Shape (7).png',
              color: CupertinoColors.activeBlue,
              menu: 'Help',
            ),
          ),
          Divider(
            height: 0.h,
            indent: 50.w,
            thickness: 1.0,
          ),
          const SettingMenuContainer(
            icon: 'assets/icons/Shape (5).png',
            color: CupertinoColors.destructiveRed,
            menu: 'Tell a Friend',
          ),
          SizedBox(
            height: 8.h,
          ),
          const Align(
            alignment: Alignment.center,
            child: CustomText(
              text: 'WhatsApp from Facebook',
              size: 12,
              color: AppColors.lightGrayColor,
            ),
          )
        ],
      ),
    );
  }

  void _showActionSheet(context) async {
    var things = await showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            actions: [
              CupertinoActionSheetAction(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Mail',
                    color: CupertinoColors.activeBlue,
                  )),
              CupertinoActionSheetAction(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Message',
                    color: CupertinoColors.activeBlue,
                  )),
              CupertinoActionSheetAction(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'More',
                    color: CupertinoColors.activeBlue,
                  )),
            ],
            cancelButton: CupertinoButton(
                child: const CustomText(
                  text: 'cancel',
                  color: CupertinoColors.activeBlue,
                ),
                onPressed: () {
                  // Navigator.of(context).pop('Cancel');
                }),
          );
        });
  }
}
