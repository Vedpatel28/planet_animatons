// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:planet_animatons/models/planets_model.dart';

class home_Page extends StatefulWidget {
  const home_Page({super.key});

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  double turns = 0.0;
  late Animation<double> rotation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        minutes: 2,
      ),
    )..forward();

    rotation = Tween<double>(
      begin: 0.0,
      end: (pi / 12).toDouble(),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.bounceInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(-150, -200),
            child: RotationTransition(
              turns: Tween(
                begin: 0.0,
                end: 1.0,
              ).animate(controller),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 550,
                width: 550,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: const Offset(100, -100),
                      child: RotationTransition(
                        turns: rotation,
                        child: AnimatedContainer(
                          height: 200,
                          width: 200,
                          duration: const Duration(
                            minutes: 3,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "${planets[0].iconImage}",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(350, 120),
                      child: RotationTransition(
                        turns: Tween(
                          begin: 0.0,
                          end: 1.0,
                        ).animate(controller),
                        child: AnimatedContainer(
                          height: 200,
                          width: 200,
                          duration: const Duration(
                            minutes: 3,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/jupiter.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // com
                    Transform.translate(
                      offset: const Offset(-80, 350),
                      child: RotationTransition(
                        turns: Tween(
                          begin: 0.0,
                          end: 1.0,
                        ).animate(controller),
                        child: AnimatedContainer(
                          height: 200,
                          width: 200,
                          duration: const Duration(
                            minutes: 3,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/mars.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // com
                    Transform.translate(
                      offset: const Offset(230, 350),
                      child: RotationTransition(
                        turns: Tween(
                          begin: 0.0,
                          end: 1.0,
                        ).animate(controller),
                        child: AnimatedContainer(
                          height: 200,
                          width: 200,
                          duration: const Duration(
                            minutes: 3,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/mercury.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-150, 100),
                      child: RotationTransition(
                        turns: Tween(
                          begin: 0.0,
                          end: 1.0,
                        ).animate(controller),
                        child: AnimatedContainer(
                          height: 200,
                          width: 200,
                          duration: const Duration(
                            minutes: 3,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/neptune.png",
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
        ],
      ),
    );
  }
}
