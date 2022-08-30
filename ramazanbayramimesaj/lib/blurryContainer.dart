// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ramazanbayramimesaj/animasyon.dart';
import 'package:ramazanbayramimesaj/data.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

import 'package:lottie/lottie.dart';


class blurContainer extends StatefulWidget {
  const blurContainer({Key? key}) : super(key: key);

  @override
  State<blurContainer> createState() => _blurContainerState();
}

class _blurContainerState extends State<blurContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('https://im.haberturk.com/2021/05/12/daa0b3ddc8cab50875b361dff3e01c3b_640x640.jpg'),
          ),
        ),
            child: SafeArea(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.white,
                  height: 150,
                  width: 350,
                ),
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.black,
                  height: 150,
                  width: 350,
                ),
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.purple,
                  blur: 3,
                  height: 120,
                  width: 350,
                ),
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.lightBlueAccent,
                  height: 180,
                  width: 350,
                  blur: 2,
                ),
              ],
            )),
      ),
    );
  }
}
