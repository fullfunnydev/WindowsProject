
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learngenglish/FontRenkLink.dart';

class kidsCont extends StatelessWidget {
  const kidsCont({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EkranyaziFontRenkLink.marginDegeri,
      width: 250.sp,
      height: 150.sp,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("images/kids.gif"), fit: BoxFit.fill),
        borderRadius: EkranyaziFontRenkLink.borderRadiusDegeri,
      ),
    );
  }
}