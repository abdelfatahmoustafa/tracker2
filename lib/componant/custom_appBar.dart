


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utilis/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final String? label;

  const CustomAppBar({Key? key, this.actions, this.label = ''})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title: Text(
        label!,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: K.blackColor),
      ),
      centerTitle: false,
      automaticallyImplyLeading: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading:  IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: K.blackColor,
        ), onPressed: () {
          Get.back();
      },
      ),
      actions: actions,
    );
  }
}
