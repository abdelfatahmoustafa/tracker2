import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilis/constant.dart';

class FixedRichText extends StatelessWidget {
  final String? leftLabel;
  final String? rightLabel;
  final Function()? onTab;

  const FixedRichText({Key? key, this.leftLabel, this.rightLabel, this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: leftLabel,
            style:  TextStyle(color: K.blackColor, fontSize: 17.sp),
            children: [
              TextSpan(
                recognizer: TapGestureRecognizer()..onTap = onTab,
                text: rightLabel,
                style:  TextStyle(fontSize: 15.sp, color: K.blackColor,fontWeight: FontWeight.bold),
              )
            ]));
  }
}
