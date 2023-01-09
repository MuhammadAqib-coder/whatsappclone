import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/widgets/call_detail_widget.dart';

class AllCallsScreen extends StatelessWidget {
  AllCallsScreen({super.key});

  var imageList = [
    'assets/images/Oval (7).png',
    'assets/images/Oval (1).png',
    'assets/images/Oval (6).png',
    'assets/images/Oval (1).png',
    'assets/images/Oval (8).png',
    'assets/images/Oval (6).png',
    'assets/images/Oval (6).png',
    'assets/images/Oval (9).png',
    'assets/images/Oval (3).png',
    'assets/images/Oval (3).png',
    'assets/images/Oval (10).png',
    'assets/images/Oval (9).png'
  ];

  var nameList = [
    'Martin Randolph',
    'Karen Castillo',
    'Kieron Dotson',
    'Karen Castillo',
    'Zack John',
    'Kieron Dotson',
    'Kieron Dotson',
    'Jamie Franco',
    'Martha Craig',
    'Martha Craig',
    'Maisy Humphrey',
    'Jamie Franco',
  ];

  var dateList = [
    '10/13/19',
    '10/11/19',
    '10/8/19',
    '9/30/19',
    '9/24/19',
    '9/16/19',
    '9/15/19',
    '9/10/19',
    '9/10/19',
    '9/6/19',
    '8/22/19',
    '8/20/19'
  ];

  var callLogList = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: nameList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CallDetailWidget(
                date: dateList[index],
                image: imageList[index],
                name: nameList[index],
              ),
              Divider(
                height: 0.h,
                indent: 60.w,
                thickness: 1.0,
              ),
            ],
          );
        });
  }
}
