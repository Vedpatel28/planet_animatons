// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';

class home_Page extends StatefulWidget {
  const home_Page({super.key});

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  double turns = 0.0;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );
  }

  changeRotation() {
    turns += 1 / 8.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedRotation(
        turns: turns,
        duration: const Duration(milliseconds: 400),
        child: GestureDetector(
          onTap: () {
            changeRotation;
          },
          child: AnimatedContainer(
            height: 200,
            width: 200,
            duration: const Duration(milliseconds: 400),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L3BkMzYtMS1waWExOTk1Mi1qb2I2MjMucG5n.png?s=Ys1DrHPJkFIEZdaJsX9hbIscKhJE2nXtvXowjHQu8TY"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.all(18),
// child: Column(
// children: [
// TweenAnimationBuilder(
// duration: const Duration(milliseconds: 200),
// builder: (context, val, _) {
// return Align(
// alignment: const Alignment(0, 2),
// child: TweenAnimationBuilder(
// tween: Tween(begin: 0.0, end: pi * 2),
// duration: const Duration(milliseconds: 400),
// builder: (context, value, child) {
// return Transform.rotate(
// angle: value,
// alignment: const Alignment(0, 10),
// child: AnimatedContainer(
// height: 120,
// width: 120,
// decoration: const BoxDecoration(
// image: DecorationImage(
// image: NetworkImage(
// "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L3BkMzYtMS1waWExOTk1Mi1qb2I2MjMucG5n.png?s=Ys1DrHPJkFIEZdaJsX9hbIscKhJE2nXtvXowjHQu8TY",
// ),
// fit: BoxFit.cover,
// ),
// shape: BoxShape.circle,
// ),
// duration: const Duration(
// milliseconds: 300,
// ),
// ),
// );
// },
// ),
// );
// },
// tween: Tween(begin: 0.1, end: pi * 2),
// ),
// ],
// ),
// )
