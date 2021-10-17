import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:pro_drawer_example/widget/global_text.dart';

class ProDrawerHeader extends StatelessWidget {
  const ProDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                ProDrawer.of(context).toggle();
              },
              child: SvgPicture.asset(
                "assets/icons/iconly_light_arrow_left.svg",
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            GlobalText(
              str: "Md Ashiqul Islam",
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 8.h,
            ),
            GlobalText(
              str: "01677515692",
              color: const Color(0xff535960),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: 30.h,
            ),

            const Divider(
              thickness: 1,
              color: Color(0xffe8e8e8),
            ),

          ],
        ),
      ),
    );
  }
}
