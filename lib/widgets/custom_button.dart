import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatelessWidget {
   CustomButton({required this.text,required this.onTap});
String text;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: 353,
        height: 51,
        padding: const EdgeInsets.symmetric(horizontal: 112, vertical: 11),
        decoration: ShapeDecoration(
          color: Color(0xFF0B60A4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),

        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
