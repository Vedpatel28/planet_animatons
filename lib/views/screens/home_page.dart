// ignore_for_file: camel_case_types

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
        milliseconds: 600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(-150, -200),
            child: AnimatedRotation(
              turns: turns,
              curve: Curves.easeInOutQuint,
              duration: const Duration(seconds: 1),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 500,
                width: 500,
                decoration: const BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Colors.black54,
                  //     Colors.blue,
                  //   ],
                  //   end: Alignment.bottomRight,
                  // ),
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: const Offset(130, -10),
                      child: AnimatedRotation(
                        turns: turns,
                        duration: const Duration(minutes: 2),
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
                                "assets/images/earth.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Transform.translate(
                    //   offset: const Offset(100, 200),
                    //   child: AnimatedRotation(
                    //     turns: turns,
                    //     duration: const Duration(minutes: 2),
                    //     child: AnimatedContainer(
                    //       height: 200,
                    //       width: 200,
                    //       duration: const Duration(
                    //         minutes: 3,
                    //       ),
                    //       decoration: const BoxDecoration(
                    //         shape: BoxShape.circle,
                    //         image: DecorationImage(
                    //           image: NetworkImage(
                    //             "https://nineplanets.org/wp-content/uploads/2020/03/mercury.png",
                    //           ),
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    //  com
                    Transform.translate(
                      offset: const Offset(300, 100),
                      child: AnimatedRotation(
                        turns: turns,
                        duration: const Duration(minutes: 2),
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
                      offset: const Offset(-10, 300),
                      child: AnimatedRotation(
                        turns: turns,
                        duration: const Duration(minutes: 2),
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
                      offset: const Offset(250, 300),
                      child: AnimatedRotation(
                        turns: turns,
                        duration: const Duration(minutes: 2),
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
                      offset: const Offset(-50, 100),
                      child: AnimatedRotation(
                        turns: turns,
                        duration: const Duration(minutes: 2),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            turns += 1 / 8;
          });
        },
        child: const Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}