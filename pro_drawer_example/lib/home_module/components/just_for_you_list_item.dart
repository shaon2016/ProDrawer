import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_drawer_example/widget/global_text.dart';

class JustForYouListItem extends StatelessWidget {
  const JustForYouListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffe8e8e8),
          width: 0.5.w,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 175.h,
            child: CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/350x150",
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.w,
              right: 15.w,
              top: 15.h,
            ),
            child: GlobalText(
              str: "Apple watch GPS 40 mm Sport brand",
              
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.333,
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          priceUI(),
          SizedBox(
            height: 7.h,
          ),
          bottomUI(),
          SizedBox(
            height: 12.h,
          ),
        ],
      ),
    );
  }

  priceUI() {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.w,
        right: 15.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
              text: new TextSpan(children: [
            TextSpan(
                text: "৳ ",
                style: TextStyle(
                  fontFamily: 'GTWalsheimPro-Regular',
                  color: Color(0xff000000),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.333,
                )),
            TextSpan(
                text: "58,041",
                style: TextStyle(
                  fontFamily: 'GTWalsheimPro-Medium',
                  color: Color(0xff000000),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.333,
                )),
          ])),
          SizedBox(
            width: 8.w,
          ),
          GlobalText(
            str: "৳ 65,050",
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xffc2c5c9),
            letterSpacing: -0.333,
          ),
        ],
      ),
    );
  }

  bottomUI() {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.w,
        right: 15.w,
      ),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Color(
              0xffff5264,
            ),
          ),
          SizedBox(
            width: 3.w,
          ),
          GlobalText(
            str: "3.9",
            
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff989ea6),
            letterSpacing: -0.333,
          ),
          SizedBox(
            width: 6.w,
          ),
          Container(
            width: 1.w,
            height: 8.h,
            decoration: new BoxDecoration(
              color: Color(0xffc2c5c9),
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          GlobalText(
            str: "200 sold",
            
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff989ea6),
            letterSpacing: -0.333,
          ),
        ],
      ),
    );
  }
}
