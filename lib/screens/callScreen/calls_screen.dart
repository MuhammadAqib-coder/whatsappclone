import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/cubits/call_cubit.dart';
import 'package:ios_design/screens/callScreen/all_calls_screen.dart';
import 'package:ios_design/widgets/custom_text.dart';

enum Calls { allCalls, missCalls }

class CallsScreen extends StatefulWidget {
  CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  var selectedCall = Calls.allCalls;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w, top: 12.h),
        border: Border(),
        brightness: Brightness.light,
        backgroundColor: AppColors.appBarColor,
        leading: Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: CustomText(
            text: 'Edit',
            color: CupertinoColors.activeBlue,
          ),
        ),
        trailing: Stack(
          children: [
            Icon(
              CupertinoIcons.phone,
              size: 20.h,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Icon(
                CupertinoIcons.add,
                size: 10.h,
              ),
            )
          ],
        ),
        middle: BlocBuilder<CallCubit, Calls>(builder: (context, state) {
          return CupertinoSegmentedControl(
              selectedColor: CupertinoColors.activeBlue,
              unselectedColor: CupertinoColors.white,
              groupValue: state,
              children: <Calls, Widget>{
                Calls.allCalls: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                  child: CustomText(
                    text: 'All',
                    size: 13,
                    weight: FontWeight.w500,
                    color: state == Calls.allCalls
                        ? CupertinoColors.white
                        : CupertinoColors.activeBlue,
                  ),
                ),
                Calls.missCalls: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                  child: CustomText(
                    text: 'Missed',
                    size: 13,
                    weight: FontWeight.w500,
                    color: state == Calls.allCalls
                        ? CupertinoColors.activeBlue
                        : CupertinoColors.white,
                  ),
                )
              },
              onValueChanged: (value) {
                context.read<CallCubit>().changeCallSegment(value);
              });
        }),
      ),
      child: AllCallsScreen(),
    );
  }
}
