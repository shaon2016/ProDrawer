import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:pro_drawer_example/widget/global_text.dart';

import 'components/home_screen_featured_category.dart';
import 'components/just_for_you_product_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            getToolBar(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: const Color(0xfff6f6f6),
                      padding: EdgeInsets.all(20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getTopCircleView(
                              "Flash deal", "assets/icons/ic_flash_deal.svg"),
                          getTopCircleView(
                              "Today offers", "assets/icons/star_8.svg"),
                          getTopCircleView(
                              "Top brands", "assets/icons/group_34153.svg"),
                          getTopCircleView(
                              "Best sellers", "assets/icons/group_34154.svg"),
                          getTopCircleView(
                              "Gift Card", "assets/icons/group_34155.svg"),
                        ],
                      ),
                    ),
                    Container(
                      height: 150.h,
                      color: Colors.amber,
                    ),
                    HomeScreenFeaturedCategory(),
                    Container(
                      padding: EdgeInsets.only(
                        left: 15.2,
                        right: 15.w,
                        top: 15.h,
                      ),
                      color: Color(0xfff9f9f9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GlobalText(
                            str: "Just for you",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          JustForYouProductList(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  getToolBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: const Color(0x1e000000), blurRadius: 5.r, spreadRadius: 0)
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              ProDrawer.of(context).toggle();
            },
            child: SizedBox(
              width: 20.w,
              height: 14.h,
              child: SvgPicture.asset(
                "assets/icons/group_34137.svg",
              ),
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(
                    left: 14.w, right: 14.w, top: 12.h, bottom: 12.h),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color(0xff989ea6),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    GlobalText(
                      str: "Search for products",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color(0xfff2f2f2),
                  borderRadius: BorderRadius.circular(12.r),
                ),
              )),
          SizedBox(
            width: 30.w,
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              width: 20.w,
              height: 25.h,
              child: SvgPicture.asset(
                "assets/icons/group_34159.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }

  getTopCircleView(String text, String iconAssetPath) {
    return Column(
      children: [
        // GlobalWidget.circularContainerWithBorder(
        //   EdgeInsets.only(left: 13.w, right: 13.w, top: 13.h, bottom: 13.h),
        //   Colors.white,
        //   100.r,
        //   const Color(0xffe2e2e2),
        //   1.w,
        //   SizedBox(
        //     width: 25.w,
        //     height: 25.h,
        //     child: SvgPicture.asset(
        //       iconAssetPath,
        //     ),
        //   ),
        // ),
        Container(
          padding:
              EdgeInsets.only(left: 13.w, right: 13.w, top: 13.h, bottom: 13.h),
          child: SizedBox(
            width: 25.w,
            height: 25.h,
            child: SvgPicture.asset(
              iconAssetPath,
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: const Color(0xffe2e2e2),
              width: 1.w,
            ),
          ),
        ),
        SizedBox(
          height: 11.h,
        ),
        GlobalText(
          str: text,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        )
      ],
    );
  }
}
