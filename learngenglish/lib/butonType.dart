// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learngenglish/FontRenkLink.dart';



class Buton extends StatelessWidget {
  String resimLink;
  Function tiklamaButonu;
  Buton({
    required this.resimLink,
    required this.tiklamaButonu,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => tiklamaButonu(),
        child: Container(
          margin: EdgeInsets.all(5),
          width: double.infinity,
          height: 85.sp,
          child: Image.asset(
            "${resimLink}",
            fit: BoxFit.fill,
          ),
          decoration: BoxDecoration(
              borderRadius: EkranyaziFontRenkLink.borderRadiusDegeriMenu),
        ),
      ),
    );
  }
}
