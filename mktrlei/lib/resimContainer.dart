import 'package:flutter/material.dart';
import 'package:mktrlei/sabitler.dart';

class resimContainer extends StatelessWidget {
  const resimContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widd=MediaQuery.of(context).size.width;
    var heigh=MediaQuery.of(context).size.height;
    return Container(
      height: heigh/4,
      width: widd/1.3,
     decoration: BoxDecoration(
       color: Colors.green,
       borderRadius: BorderRadius.circular(10),
       // ignore: prefer_const_constructors
       image: DecorationImage(
         fit: BoxFit.fitWidth,
         image: NetworkImage(EkranSabitleri.appbarResimLinki),
       )
     ),
    );
  }
}
