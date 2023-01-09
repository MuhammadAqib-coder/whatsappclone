import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/screens/chatScreen/chat_selection_screen.dart';

class ChatSummaryWidget extends StatelessWidget {
  ChatSummaryWidget({
    super.key,
    required this.image,
    required this.name,
    required this.message,
    required this.date,
    required this.icon,
    required this.onTap,
  });
  final String image;
  final String name;
  final String message;
  final String date;
  final IconData icon;
  final VoidCallback onTap;

  var iconList = [
    Image.asset('assets/icons/Shape.png'),
    Icon(
      CupertinoIcons.mic_fill,
      color: CupertinoColors.activeGreen,
      size: 11.h,
    ),
    Icon(
      CupertinoIcons.camera,
      size: 11.h,
    ),
    Icon(
      CupertinoIcons.camera,
      size: 11.h,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => ChatSelectionScreen()));
      },
      onTap: onTap,
      child: Container(
        height: 70.h,
        decoration: const BoxDecoration(
            // border: Border(bottom: BorderSide(width: 0.3))
            ),
        child: Row(
          children: [
            Container(
              height: 52.h,
              width: 52.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(image))),
            ),
            SizedBox(
              width: 12.w,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name),
                        Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: Text(date)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          icon,
                          size: 11.h,
                          color: CupertinoColors.activeGreen,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Expanded(
                          child: Text(
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            message,
                            style: TextStyle(fontSize: 14.sp),
                          ),
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
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    // Container(
    //   // padding:
    //   //     EdgeInsets.only(top: 11.h, bottom: 11.h, left: 16.w, right: 16.w),
    //   height: 74.h,
    //   width: double.infinity,
    //   // decoration: BoxDecoration(
    //   //     border: Border(
    //   //         top: BorderSide(width: 1), bottom: BorderSide(width: 1))),
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         height: 52.h,
    //         width: 52.w,
    //         decoration: BoxDecoration(
    //             shape: BoxShape.circle,
    //             image: DecorationImage(image: AssetImage(image))),
    //       ),
    //       Column(
    //         // mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Row(
    //             // crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               SizedBox(
    //                 width: 12.w,
    //               ),
    //               Text(
    //                 name,
    //                 style:
    //                     TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
    //               ),
    //               SizedBox(
    //                 width: 90.w,
    //               ),
    //               Text(
    //                 date,
    //                 style:
    //                     TextStyle(fontSize: 14.sp, color: AppColors.grayColor),
    //               )
    //             ],
    //           ),
    //           // Expanded(child: Icon(CupertinoIcons.right_chevron)),
    //           Expanded(
    //             child: Row(
    //               children: [
    //                 SizedBox(
    //                   width: 12.w,
    //                 ),
    //                 Icon(
    //                   CupertinoIcons.camera,
    //                   size: 11.h,
    //                 ),
    //                 SizedBox(
    //                   width: 3.w,
    //                 ),
    //                 SizedBox(
    //                   width: 235.w,
    //                   child: Text(
    //                     maxLines: 2,
    //                     softWrap: true,
    //                     overflow: TextOverflow.ellipsis,
    //                     message,
    //                     style: TextStyle(fontSize: 14.sp),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsets.only(bottom: 10.h),
    //                   child: Icon(
    //                     CupertinoIcons.right_chevron,
    //                     size: 14.h,
    //                     color: AppColors.grayColor,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
