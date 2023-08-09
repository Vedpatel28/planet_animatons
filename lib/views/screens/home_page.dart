// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:planet_animatons/models/planets_model.dart';
import 'package:planet_animatons/utiles/routes_utiles.dart';

class home_Page extends StatefulWidget {
  const home_Page({super.key});

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page> with TickerProviderStateMixin {
  late AnimationController controller;
  late AnimationController rotationController;
  late Animation<double> rotation;
  late Animation<double> inRotation;

  Color primaryTextColor = const Color(0xFF414C6B);
  Color secondaryTextColor = const Color(0xFFE4979E);
  Color contentTextColor = const Color(0xff868686);
  Color navigationColor = const Color(0xFF6751B5);
  Color gradientStartColor = const Color(0xFF0050AC);
  Color gradientEndColor = const Color(0xFF9354B9);

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 10,
      ),
    )..repeat();

    rotationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 10,
      ),
    )..repeat();

    rotation = Tween<double>(
      begin: pi,
      end: (pi / 2).toDouble(),
    ).animate(
      CurvedAnimation(
        parent: rotationController,
        curve: Curves.easeIn,
      ),
    );

    inRotation = Tween<double>(
      begin: 0.0,
      end: (pi / 2).toDouble(),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 750,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  gradientStartColor,
                  gradientEndColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Stack(
              children: [
                // Sun
                Transform.translate(
                  offset: const Offset(-70, 70),
                  child: RotationTransition(
                    turns: Tween(begin: pi,end: pi / 2,).animate(controller),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/sun.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-70, 70),
                  child: RotationTransition(
                    turns: rotation,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          //  Black Mercuric
                          Transform.translate(
                            offset: const Offset(200, 150),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    AllRoutes.infoPage,
                                    arguments: 0);
                              },
                              child: RotationTransition(
                                turns: inRotation,
                                child: Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "${planets[0].iconImage}",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-70, 70),
                  child: RotationTransition(
                    turns: rotation,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          Transform.translate(
                            offset: const Offset(10, 120),
                            child: RotationTransition(
                              turns: inRotation,
                              child: AnimatedContainer(
                                height: 120,
                                width: 120,
                                duration: const Duration(
                                  minutes: 3,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${planets[2].iconImage}",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-70, 70),
                  child: RotationTransition(
                    turns: rotation,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          //  Black Mercuric
                          Transform.translate(
                            offset: const Offset(150, 120),
                            child: RotationTransition(
                              turns: inRotation,
                              child: AnimatedContainer(
                                height: 120,
                                width: 120,
                                duration: const Duration(
                                  minutes: 3,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${planets[3].iconImage}",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-70, 70),
                  child: RotationTransition(
                    turns: rotation,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          Transform.translate(
                            offset: const Offset(280, 120),
                            child: RotationTransition(
                              turns: inRotation,
                              child: AnimatedContainer(
                                height: 120,
                                width: 120,
                                duration: const Duration(
                                  minutes: 3,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "${planets[4].iconImage}",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-70, 70),
                  child: RotationTransition(
                    turns: rotation,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          //  Black Mercuric
                          Transform.translate(
                            offset: const Offset(330, 120),
                            child: RotationTransition(
                              turns: inRotation,
                              child: AnimatedContainer(
                                height: 120,
                                width: 120,
                                duration: const Duration(
                                  minutes: 3,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "${planets[6].iconImage}",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-70, 70),
                  child: RotationTransition(
                    turns: rotation,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          Transform.translate(
                            offset: const Offset(440, 320),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    AllRoutes.infoPage,
                                    arguments: 7);
                              },
                              child: RotationTransition(
                                turns: inRotation,
                                child: AnimatedContainer(
                                  height: 120,
                                  width: 120,
                                  duration: const Duration(
                                    minutes: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "${planets[7].iconImage}",
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            width: double.infinity,
            color: Colors.red,
          ),
        ],
      ),
      backgroundColor: gradientEndColor,
    );
  }
}
