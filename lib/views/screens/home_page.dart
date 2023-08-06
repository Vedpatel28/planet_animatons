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
        milliseconds: 400,
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
            offset: const Offset(-150, 10),
            child: AnimatedRotation(
              turns: turns,
              curve: Curves.easeInOutQuint,
              duration: const Duration(seconds: 1),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 500,
                width: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77701928157.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black54,
                      Colors.white24,
                      Colors.blue,
                    ],
                    end: Alignment.bottomRight,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Stack(children: [
                  Transform.translate(
                    offset: const Offset(130, -10),
                    child: AnimatedRotation(
                      turns: turns,
                      duration: const Duration(minutes: 2),
                      child: AnimatedContainer(
                        height: 100,
                        width: 100,
                        duration: const Duration(
                          minutes: 3,
                        ),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://www.transparentpng.com/thumb/planet/colorful-planet-png-images-free-1QAjqO.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(250, 100),
                    child: AnimatedRotation(
                      turns: turns,
                      duration: const Duration(minutes: 2),
                      child: AnimatedContainer(
                        height: 100,
                        width: 100,
                        duration: const Duration(
                          minutes: 3,
                        ),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://nineplanets.org/wp-content/uploads/2020/03/mercury.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(100, 250),
                    child: AnimatedRotation(
                      turns: turns,
                      duration: const Duration(minutes: 2),
                      child: AnimatedContainer(
                        height: 100,
                        width: 100,
                        duration: const Duration(
                          minutes: 3,
                        ),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://www.transparentpng.com/thumb/planet/colorful-planet-png-images-free-1QAjqO.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-50, 110),
                    child: AnimatedRotation(
                      turns: turns,
                      duration: const Duration(minutes: 2),
                      child: AnimatedContainer(
                        height: 100,
                        width: 100,
                        duration: const Duration(
                          minutes: 3,
                        ),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://www.transparentpng.com/thumb/planet/colorful-planet-png-images-free-1QAjqO.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            turns += 1 / 4;
          });
        },
        child: const Icon(
          Icons.refresh,
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

// //
// Transform.translate(
//   offset: const Offset(20, 1),
//   child: AnimatedRotation(
//     turns: 50,
//     duration: const Duration(minutes: 20),
//     child: AnimatedContainer(
//       height: 100,
//       width: 100,
//       duration: const Duration(
//         minutes: 3,
//       ),
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle,
//         image: DecorationImage(
//           image: NetworkImage(
//             "https://www.transparentpng.com/thumb/planet/colorful-planet-png-images-free-1QAjqO.png",
//           ),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//   ),
// ),
// Transform.translate(
//   offset: const Offset(20, 1),
//   child: AnimatedRotation(
//     turns: 50,
//     duration: const Duration(minutes: 20),
//     child: AnimatedContainer(
//       height: 100,
//       width: 100,
//       duration: const Duration(
//         minutes: 3,
//       ),
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle,
//         image: DecorationImage(
//           image: NetworkImage(
//             "https://www.transparentpng.com/thumb/planet/colorful-planet-png-images-free-1QAjqO.png",
//           ),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//   ),
// ),
// Transform.translate(
//   offset: const Offset(20, 1),
//   child: AnimatedRotation(
//     turns: 50,
//     duration: const Duration(minutes: 20),
//     child: AnimatedContainer(
//       height: 100,
//       width: 100,
//       duration: const Duration(
//         minutes: 3,
//       ),
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle,
//         image: DecorationImage(
//           image: NetworkImage(
//             "https://www.transparentpng.com/thumb/planet/colorful-planet-png-images-free-1QAjqO.png",
//           ),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//   ),
// ),
// Transform.translate(
//   offset: const Offset(20, 1),
//   child: AnimatedRotation(
//     turns: 50,
//     duration: const Duration(minutes: 20),
//     child: AnimatedContainer(
//       height: 100,
//       width: 100,
//       duration: const Duration(
//         minutes: 3,
//       ),
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle,
//         image: DecorationImage(
//           image: NetworkImage(
//             "https://www.transparentpng.com/thumb/planet/colorful-planet-png-images-free-1QAjqO.png",
//           ),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//   ),
// ),
