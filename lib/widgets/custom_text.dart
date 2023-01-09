import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.color = CupertinoColors.black,
      this.weight = FontWeight.w400,
      this.size = 16});
  final String text;
  final dynamic color;
  final FontWeight weight;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size.sp,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
