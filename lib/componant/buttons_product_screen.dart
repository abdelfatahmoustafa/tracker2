import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilis/constant.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key, this.color,required this.textColor,required this.label, this.onTap,this.height, this.colorText})
      : super(key: key);
  final Function()? onTap;
  final String? label;
  final Color? color;
  final Color? textColor;
  final Color? colorText;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
               ),
        ),
        child: Text(
          label .toString(),
          style: TextStyle(
            color: textColor,
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
