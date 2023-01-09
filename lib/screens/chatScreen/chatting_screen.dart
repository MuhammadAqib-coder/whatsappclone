import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/bubbles/bubble_special_two.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/screens/chatScreen/chats_main_screen.dart';
import 'package:ios_design/screens/chatScreen/contact_info_screen.dart';
import 'package:ios_design/widgets/custom_text.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(top: 5.h, start: 10.w, end: 10.w),
        // automaticallyImplyLeading: true,
        trailing: Container(
          width: 60.w,
          height: 30.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                CupertinoIcons.video_camera,
                size: 25.h,
              ),
              Icon(
                CupertinoIcons.phone,
                size: 20.h,
              )
            ],
          ),
        ),
        middle: Container(
          padding: EdgeInsets.only(top: 5.h),
          width: 250.w,
          height: 40.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 30.h,
              ),
              SizedBox(
                width: 5.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: name,
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => ContactInfoScreen(
                                    name: name,
                                    image: image,
                                  )));
                    },
                    child: const CustomText(
                      text: 'tap here for contact info',
                      size: 12,
                      color: AppColors.lightGrayColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(top: 8.h, right: 5.w),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              // Navigator.pushReplacement(context,
              //     CupertinoPageRoute(builder: (_) => ChatsMainScreen()));
            },
            child: Icon(
              CupertinoIcons.left_chevron,
              size: 25.h,
            ),
          ),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 11,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle.png'),
                      fit: BoxFit.cover)),
              child: ListView(
                children: [
                  const BubbleSpecialTwo(
                    text: 'Good bye!',
                    color: AppColors.lightGreenColor,
                    seen: true,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50.h,
                    // width: 50.w,
                    child: DateChip(
                      date: DateTime(2023, 1, 1),
                      color: AppColors.dateColor,
                    ),
                  ),
                  BubbleNormal(
                    text: 'Good morning!',
                    color: AppColors.lightGreenColor,
                    bubbleRadius: 8.r,
                    seen: true,
                  ),
                  BubbleNormal(
                    text: 'Japan looks amazing!',
                    color: AppColors.lightGreenColor,
                    bubbleRadius: 8.r,
                    seen: true,
                  ),
                  BubbleNormalImage(
                    id: 'one',
                    image: Image.asset(
                      'assets/images/Oval (6).png',
                      height: 70.h,
                    ),
                    color: AppColors.lightGreenColor,
                    bubbleRadius: 8.r,
                    seen: true,
                  ),
                  BubbleNormalImage(
                    id: 'two',
                    image: Image.asset(
                      'assets/images/Oval (2).png',
                      height: 70.h,
                    ),
                    color: AppColors.lightGreenColor,
                    bubbleRadius: 8.r,
                    seen: true,
                    tail: true,
                  ),
                  BubbleSpecialTwo(
                    text: 'Do you know what time is it?',
                    isSender: false,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const Icon(CupertinoIcons.add),
                SizedBox(
                  width: 12.w,
                ),
                Expanded(
                    child: CupertinoTextField(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: AppColors.lightGrayColor)),
                  suffix: GestureDetector(
                      onTap: () {
                        _showActionSheet(context);
                      },
                      child: const Icon(CupertinoIcons.money_rubl_circle_fill)),
                )),
                SizedBox(
                  width: 17.w,
                ),
                Icon(CupertinoIcons.camera),
                SizedBox(
                  width: 23.w,
                ),
                Icon(CupertinoIcons.mic)
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
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
                  child: Row(
                    children: [
                      const Icon(CupertinoIcons.camera),
                      SizedBox(
                        width: 20.w,
                      ),
                      const CustomText(
                        text: 'Camera',
                        size: 18,
                      ),
                    ],
                  )),
              CupertinoActionSheetAction(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(CupertinoIcons.photo),
                      SizedBox(
                        width: 20.w,
                      ),
                      const CustomText(
                        text: 'Photo & Video Library',
                        size: 18,
                      ),
                    ],
                  )),
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.doc),
                    SizedBox(
                      width: 20.w,
                    ),
                    const CustomText(
                      text: 'Document',
                      size: 18,
                    ),
                  ],
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.placemark),
                    SizedBox(
                      width: 20.w,
                    ),
                    const CustomText(
                      text: 'Location',
                      size: 18,
                    ),
                  ],
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.profile_circled),
                    SizedBox(
                      width: 20.w,
                    ),
                    const CustomText(
                      text: 'Contact',
                      size: 18,
                    ),
                  ],
                ),
              ),
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
