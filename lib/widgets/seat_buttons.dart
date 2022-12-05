import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeatButtons extends StatelessWidget {
  String? text;
  final Color colors;
  final Color backgroundColor;
  final Color borderColor;

  SeatButtons(
      {Key? key,
      this.text = "hi",
      required this.colors,
      required this.borderColor,
      required this.backgroundColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 40.h,
      decoration: (BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: colors, //Colors.grey.shade50,
          border: Border.all(color: borderColor))),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(color: backgroundColor),
        ),
      ),
    );
  }
}
