
import 'package:flutter/material.dart';
import 'package:learngenglish/kidscont.dart';
import 'package:learngenglish/mainMenuCont.dart';

class HomePage extends StatefulWidget {
  String title;
  HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg.png'), fit: BoxFit.fill)),
          child: Column(
            children:  [const kidsCont(), mainMenuCont()]//const eklenecek
          ),
        ),
      ),
    );
  }
}

