 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilis/constant.dart';

class CustomTextField extends StatelessWidget {
  void dispose() {
    print("dispose");
    controller!.dispose();
   }
  const CustomTextField(
      {Key? key, this.label, this.function, this.type,    this.controller,
        this.errorLabel, this.obSecure})
      : super(key: key);
  final String? label;
  final Function(dynamic)? function;
  final TextInputType? type;
  final bool? obSecure;
  final String? errorLabel;
  final TextEditingController ?controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.0.h),
      child:
          Container(
            height: 70,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: K.whiteColor,
            ),
            child: TextFormField(
              keyboardType: type,
              onChanged: function,
              showCursor: true,
              cursorColor: K.mainColor,
              controller: controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  label: Text(
                    label!,
                    style: TextStyle(
                        color: K.grayColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                  ),
                     ),
            ),
          ),

    );
  }
}
