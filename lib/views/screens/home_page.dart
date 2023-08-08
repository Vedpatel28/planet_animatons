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
    with TickerProviderStateMixin {
  late AnimationController controller;
  late AnimationController rotationController;
  late Animation<double> rotation;
  late Animation<double> inRotation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        minutes: 1,
      ),
    )..repeat();

    rotationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 20,
      ),
    )..forward();

    rotation = Tween<double>(
      begin: 0.0,
      end: (pi / 2).toDouble(),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOutCirc,
      ),
    );

    inRotation = Tween<double>(
      begin: 0.0,
      end: (pi / 2).toDouble(),
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(-150, -120),
            child: RotationTransition(
              turns: rotation,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 650,
                width: 650,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
                child: Stack(
                  children: [
                    //  Black Mercuric
                    Transform.translate(
                      offset: const Offset(120, 50),
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
                              ),fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Amber Venus
                    Transform.translate(
                      offset: const Offset(280,100),
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
                                "${planets[1].iconImage}",
                              ),fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Human Earth
                    Transform.translate(
                      offset: const Offset(320, 280),
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
                              ),fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                    ),
                    // red Mars
                    Transform.translate(
                      offset: const Offset(-40, 120),
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
                              ),fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                    ),
                    // red/Amber Jupiter
                    Transform.translate(
                      offset: const Offset(-70, 280),
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
                                "${planets[4].iconImage}",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // // circular Saturn
                    // Transform.translate(
                    //   offset: const Offset(-200, 180),
                    //   child: RotationTransition(
                    //     turns: rotationController,
                    //     child: AnimatedContainer(
                    //       height: 150,
                    //       width: 150,
                    //       duration: const Duration(
                    //         minutes: 3,
                    //       ),
                    //       decoration: BoxDecoration(
                    //         shape: BoxShape.circle,
                    //         image: DecorationImage(
                    //           image: AssetImage(
                    //             "${planets[5].iconImage}",
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Uranus
                    Transform.translate(
                      offset: const Offset(10, 500),
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
                                "${planets[6].iconImage}",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // blue Neptune
                    Transform.translate(
                      offset: const Offset(200, 430),
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
