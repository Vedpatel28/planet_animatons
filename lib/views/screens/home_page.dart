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
        minutes: 5,
      ),
    )..forward();

    rotationController = AnimationController(
      vsync: this,
      duration: const Duration(
        minutes: 5,
      ),
    )..forward();

    rotation = Tween<double>(
      begin: (pi).toDouble(),
      end: (pi / 4).toDouble(),
    ).animate(
      CurvedAnimation(
        parent: rotationController,
        curve: Curves.fastEaseInToSlowEaseOut,
      ),
    );

    inRotation = Tween<double>(
      begin: 0.0,
      end: (pi / 4).toDouble(),
    ).animate(
      CurvedAnimation(
        parent: rotationController,
        curve: Curves.easeInOut,
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
      body: Container(
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
            // com
            Transform.translate(
              offset: const Offset(-130, -120),
              child: RotationTransition(
                turns: rotation,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      //  Black Mercuric
                      Transform.translate(
                        offset: const Offset(150, 150),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(AllRoutes.infoPage,arguments: 0);
                          },
                          child: RotationTransition(
                            turns: rotationController,
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
                                      "${planets[0].iconImage}",
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
            // com
            Transform.translate(
              offset: const Offset(-150, -150),
              child: RotationTransition(
                turns: rotation,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(350, 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(AllRoutes.infoPage,arguments: 1);
                          },
                          child: RotationTransition(
                            turns: rotationController,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // com
            Transform.translate(
              offset: const Offset(-120, -110),
              child: RotationTransition(
                turns: rotation,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 450,
                  width: 450,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      //  Black Mercuric
                      Transform.translate(
                        offset: const Offset(300, 500),
                        child: RotationTransition(
                          turns: rotationController,
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
            // com
            Transform.translate(
              offset: const Offset(-120, -120),
              child: RotationTransition(
                turns: rotation,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 400,
                  width: 400,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-170, 430),
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
            // com
            Transform.translate(
              offset: const Offset(-150, -150),
              child: RotationTransition(
                turns: rotation,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 500,
                  width: 500,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      //  Black Mercuric
                      Transform.translate(
                        offset: const Offset(-350, 360),
                        child: RotationTransition(
                          turns: Tween<double>(
                            begin: 0.0,
                            end: (pi / 4).toDouble(),
                          ).animate(
                            CurvedAnimation(
                              parent: rotationController,
                              curve: Curves.easeInOut,
                            ),
                          ),
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
            // com
            Transform.translate(
              offset: const Offset(-300, -300),
              child: RotationTransition(
                turns: rotation,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 5),
                  height: 1100,
                  width: 1100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-550, 550),
                        child: RotationTransition(
                          turns: rotationController,
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: gradientEndColor,
    );
  }
}
