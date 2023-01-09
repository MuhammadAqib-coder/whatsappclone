import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/widgets/custom_text.dart';

import '../../widgets/chat_summary_widget.dart';
import 'chatting_screen.dart';

class ChatSelectionScreen extends StatefulWidget {
  ChatSelectionScreen({super.key});

  @override
  State<ChatSelectionScreen> createState() => _ChatSelectionScreenState();
}

class _ChatSelectionScreenState extends State<ChatSelectionScreen> {
  var imageList = [
    'assets/images/Oval.png',
    'assets/images/Oval (1).png',
    'assets/images/Oval (2).png',
    'assets/images/Oval (3).png',
    'assets/images/Oval (4).png',
    'assets/images/Oval (5).png',
    'assets/images/Oval (6).png'
  ];

  var dateList = [
    '11/16/19',
    '11/15/19',
    '10/30/19',
    '10/28/19',
    '8/25/19',
    '8/20/19',
    '7/29/19'
  ];

  var nameList = [
    'Andrew Parker',
    'Karen Castillo',
    'Maximillian Jacobson',
    'Martha Craig',
    'Tabitha Potter',
    'Maisy Humphrey',
    'Kieron Dotson'
  ];

  var messageList = [
    'What kind of strategy is better?',
    '0:14',
    'Bro, I have a good idea! ',
    'Photo',
    'Actually I wanted to check with you about your online business plan on our…',
    'Welcome, to make design process faster, look at pixels',
    'Ok, have a good trip!'
  ];

  var iconList = [
    CupertinoIcons.checkmark_alt,
    CupertinoIcons.mic_fill,
    CupertinoIcons.camera
  ];

  var check;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.white,
          border: Border(),
          leading: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CustomText(
                text: 'Done',
                color: CupertinoColors.activeBlue,
              ),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: ListView(
            shrinkWrap: true,
            children: [
              const CustomText(
                text: 'Chats',
                size: 27,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    text: 'Broadcast Lists',
                    color: AppColors.lightGrayColor,
                  ),
                  CustomText(
                    text: 'New Group',
                    color: AppColors.lightGrayColor,
                  )
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            check = index;
                            setState(() {});
                          },
                          child: Container(
                            height: 18.h,
                            width: 18.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: check == index
                                    ? CupertinoColors.activeBlue
                                    : CupertinoColors.white,
                                border: Border.all(
                                    width: 1.5.sp,
                                    color:
                                        const Color.fromRGBO(60, 60, 67, 0.6))),
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              ChatSummaryWidget(
                                icon: index == 2
                                    ? iconList[1]
                                    : index == 3
                                        ? iconList[2]
                                        : iconList[0],
                                image: imageList[index],
                                name: nameList[index],
                                message: messageList[index],
                                date: dateList[index],
                                onTap: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(CupertinoPageRoute(
                                          builder: (_) => ChattingScreen(
                                              image: imageList[index],
                                              name: nameList[index])));
                                },
                              ),
                              Divider(
                                height: 0.h,
                                indent: 50.w,
                                thickness: 1.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  })
            ],
          ),
        ));
  }
}
