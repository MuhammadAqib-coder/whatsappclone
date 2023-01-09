import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';

class StatusEdittingScreen extends StatelessWidget {
  StatusEdittingScreen({super.key});

  var _controler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Color.fromARGB(255, 227, 140, 156),
          border: const Border(),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              CupertinoIcons.xmark,
              color: CupertinoColors.white,
            ),
          ),
          trailing: GestureDetector(
            onTap: () {
              _controler.clear();
            },
            child: const Icon(
              CupertinoIcons.paintbrush_fill,
              color: CupertinoColors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 227, 140, 156),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(
              controller: _controler,
              padding: EdgeInsets.all(20.r),
              maxLines: 10,
              // maxLength: 20,
              placeholderStyle: const TextStyle(
                color: AppColors.lightGrayColor,
              ),
              style: TextStyle(color: CupertinoColors.white, fontSize: 30.sp),
              textInputAction: TextInputAction.newline,
              textAlign: TextAlign.center,
              cursorColor: CupertinoColors.white,
              cursorHeight: 50.h,
              autocorrect: true,
              placeholder: 'Type a Status',
              autofocus: true,
              // expands: true,
              keyboardType: TextInputType.multiline,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 140, 156),
              ),
            )
          ],
        ));
  }
}
