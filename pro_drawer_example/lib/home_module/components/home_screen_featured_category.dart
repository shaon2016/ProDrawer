import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_drawer_example/widget/global_text.dart';

class HomeScreenFeaturedCategory extends StatelessWidget {
  HomeScreenFeaturedCategory({Key? key}) : super(key: key);

  final _catItemDecoration = BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(20.r),
  );

  final _textColor = Color(0xff010035);
  final _fontWeight = FontWeight.w500;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.only(top: 20.h, bottom: 16.h, left: 16.w, right: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GlobalText(
            str: "Featured Categories",
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            height: 195.h,
            child: Row(
              children: [
                womenFashionUI(),
                SizedBox(
                  width: 14.w,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                child: electronicsUI(),
                                flex: 4,
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Expanded(
                                child: mobileAndAccessoriesUI(),
                                flex: 5,
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 14.h,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                child: menFashionUI(),
                                flex: 3,
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Expanded(
                                child: viewAllUI(),
                                flex: 2,
                              ),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xffe8e8e8),
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
    );
  }

  womenFashionUI() {
    return Container(
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 15.h,
            left: 15.w,
            right: 15.w,
            child: GlobalText(
              str: "Womens Fashion",
             
              fontSize: 13.sp,
              fontWeight: _fontWeight,
              color: _textColor,
            ),
          ),
        ],
      ),
      width: 110.w,
      decoration: _catItemDecoration,
    );
  }

  electronicsUI() {
    return Container(
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 15.h,
            left: 15.w,
            right: 15.w,
            child: GlobalText(
              str: "Electronices",
             
              fontSize: 13.sp,
              fontWeight: _fontWeight,
              color: _textColor,
            ),
          ),
        ],
      ),
      decoration: _catItemDecoration,
    );
  }

  menFashionUI() {
    return Container(
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 15.h,
            left: 15.w,
            right: 15.w,
            child: GlobalText(
              str: "Mens Fashion",
             
              fontSize: 13.sp,
              fontWeight: _fontWeight,
              color: _textColor,
            ),
          ),
        ],
      ),
      decoration: _catItemDecoration,
    );
  }

  viewAllUI() {
    return Container(
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 15.h,
            left: 15.w,
            right: 15.w,
            child: GlobalText(
              str: "View all categories",
             
              fontSize: 13.sp,
              fontWeight: _fontWeight,
              color: _textColor,
            ),
          ),
          Positioned(
            left: 15.w,
            bottom: 15.h,
            child: SvgPicture.asset(
              "assets/icons/iconly_light_arrow_right.svg",
            ),
          ),
        ],
      ),
      decoration: _catItemDecoration,
    );
  }

  mobileAndAccessoriesUI() {
    return Container(
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 15.h,
            left: 15.w,
            right: 15.w,
            child: GlobalText(
              str: "Mobile & Accessorices",
             
              fontSize: 13.sp,
              fontWeight: _fontWeight,
              color: _textColor,
            ),
          ),
        ],
      ),
      decoration: _catItemDecoration,
    );
  }
}
