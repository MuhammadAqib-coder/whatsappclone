import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/screens/statusScreens/status_editting_screen.dart';
import 'package:ios_design/widgets/custom_text.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          brightness: Brightness.light,
          backgroundColor: AppColors.appBarColor,
          middle: CustomText(
            text: 'Status',
            weight: FontWeight.w600,
          ),
          leading: Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: 'Privacy',
              color: CupertinoColors.activeBlue,
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        child: ListView(
          children: [
            SizedBox(
              height: 35.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              height: 70.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: Row(
                children: [
                  SizedBox(
                    height: 58.h,
                    width: 58.w,
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: [
                        Container(
                          height: 58.h,
                          width: 58.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Oval (1).png'))),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () async {},
                              child: Container(
                                padding: EdgeInsets.only(top: 1.h, left: 1.w),
                                height: 18.h,
                                width: 18.h,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: CupertinoColors.activeBlue),
                                child: Icon(
                                  CupertinoIcons.add,
                                  color: CupertinoColors.white,
                                  size: 15.h,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: 'My Status',
                        weight: FontWeight.w600,
                        size: 16,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const CustomText(
                        text: 'Add to my status',
                        weight: FontWeight.w400,
                        size: 14,
                        color: AppColors.lightGrayColor,
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 75.w,
                  // ),
                  Spacer(),
                  GestureDetector(
                    onTap: () async {
                      final picker = ImagePicker();
                      await picker.pickImage(source: ImageSource.camera);
                    },
                    child: Container(
                      height: 33.h,
                      width: 33.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.grayColorOfCircle),
                      child: Icon(
                        CupertinoIcons.camera_fill,
                        size: 15.h,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                          CupertinoPageRoute(
                              builder: (_) => StatusEdittingScreen()));
                    },
                    child: Container(
                      height: 33.h,
                      width: 33.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.grayColorOfCircle),
                      child: Icon(
                        CupertinoIcons.pencil,
                        size: 15.h,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Container(
              height: 43.h,
              decoration: const BoxDecoration(color: CupertinoColors.white),
              child: const Center(
                child: CustomText(
                  text: 'No recent updates to show right now.',
                  size: 14,
                  weight: FontWeight.w400,
                  color: AppColors.lightGrayColor,
                ),
              ),
            )
          ],
        ));
  }
}
