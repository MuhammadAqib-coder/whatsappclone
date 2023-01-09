import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/screens/chatScreen/chatting_screen.dart';
import 'package:ios_design/widgets/chat_summary_widget.dart';
import 'package:ios_design/widgets/custom_text.dart';

class ChatsMainScreen extends StatelessWidget {
  ChatsMainScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: AppColors.appBarColor,
          trailing: const Icon(CupertinoIcons.pencil_ellipsis_rectangle),
          leading: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                  onTap: () {
                    _showActionSheet(context);
                  },
                  child: const CustomText(
                    text: 'Edit',
                    color: CupertinoColors.activeBlue,
                  ))),
          middle: const CustomText(
            text: 'Chat',
            weight: FontWeight.bold,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, top: 12.h, right: 16.w),
          child: ListView(
            // shrinkWrap: true,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CustomText(
                    text: 'Broadcast Lists',
                    color: CupertinoColors.activeBlue,
                  ),
                  CustomText(
                    text: 'New Group',
                    color: CupertinoColors.activeBlue,
                  )
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: nameList.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                      endActionPane:
                          ActionPane(motion: const ScrollMotion(), children: [
                        SlidableAction(
                          icon: CupertinoIcons.timelapse,
                          onPressed: (context) {},
                          backgroundColor: Color.fromRGBO(198, 198, 204, 1),
                          label: 'Archive',
                        ),
                        SlidableAction(
                          icon: CupertinoIcons.car_detailed,
                          onPressed: (context) {},
                          backgroundColor: Color.fromRGBO(62, 112, 167, 1),
                          label: 'More',
                        ),
                      ]),
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
                              Navigator.of(context, rootNavigator: true).push(
                                  CupertinoPageRoute(
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
                    );
                  })
            ],
          ),
        ));
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
                    text: 'Mute',
                    color: CupertinoColors.activeBlue,
                  )),
              CupertinoActionSheetAction(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Contact Info',
                    color: CupertinoColors.activeBlue,
                  )),
              CupertinoActionSheetAction(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Export Chat',
                    color: CupertinoColors.activeBlue,
                  )),
              CupertinoActionSheetAction(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Import Chat',
                    color: CupertinoColors.activeBlue,
                  )),
              CupertinoActionSheetAction(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Delete Chat',
                    color: CupertinoColors.destructiveRed,
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
