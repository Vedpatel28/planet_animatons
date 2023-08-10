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
        seconds: 20,
      ),
    )..repeat();

    rotationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 20,
      ),
    )..repeat();

    rotation = Tween<double>(
      begin: pi,
      end: (pi / 2.8).toDouble(),
    ).animate(
      CurvedAnimation(
        parent: rotationController,
        curve: Curves.easeInOut,
      ),
    );

    inRotation = Tween<double>(
      begin: 0.0,
      end: (pi / 2).toDouble(),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
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
              image: DecorationImage(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeuMDqI61u3j9QlKA_-7x364j9CJrTZupT4A&usqp=CAU",
                ),
                fit: BoxFit.cover,
              ),
              // gradient: LinearGradient(
              //   colors: [
              //     gradientStartColor,
              //     gradientEndColor,
              //   ],
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              // ),
            ),
            child: Stack(
              children: [
                // Sun
                Transform.translate(
                  offset: const Offset(-70, 70),
                  child: RotationTransition(
                    turns: Tween(
                      begin: pi,
                      end: pi / 2,
                    ).animate(controller),
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
                            offset: const Offset(310, -220),
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
                            offset: const Offset(-10, -320),
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
                            offset: const Offset(10, 300),
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
                            offset: const Offset(200, -400),
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
                            offset: const Offset(400, 200),
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
                // Transform.translate(offset: const Offset(0, 600),child: const Divider(height: 2,color: Colors.black,)),
                Transform.translate(
                  offset: const Offset(0, 450),
                  child: SizedBox(
                    height: 600,
                    child: Row(
                      children: [
                        Container(
                          height: 400,
                          width: 410,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/wooden.webp",
                              ),fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, 650),
                  child: Container(
                    height: 250,
                    child: Row(
                      children: [
                        Container(
                          height: 250,
                          width: s.width * 1,
                          child: ListView.builder(
                            itemCount: planets.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    AllRoutes.infoPage,
                                    arguments: index,
                                  );
                                },
                                child: RotationTransition(
                                  turns: inRotation,
                                  child: Hero(
                                    tag: index,
                                    child: Container(
                                      height: 200,
                                      width: 200,
                                      margin: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "${planets[index].iconImage}",
                                          ),
                                          alignment: const Alignment(0,2.4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: gradientEndColor,
    );
  }
}
